(*****************************************************************************)
(*                                                                           *)
(* Open Source License                                                       *)
(* Copyright (c) 2018 Dynamic Ledger Solutions, Inc. <contact@tezos.com>     *)
(*                                                                           *)
(* Permission is hereby granted, free of charge, to any person obtaining a   *)
(* copy of this software and associated documentation files (the "Software"),*)
(* to deal in the Software without restriction, including without limitation *)
(* the rights to use, copy, modify, merge, publish, distribute, sublicense,  *)
(* and/or sell copies of the Software, and to permit persons to whom the     *)
(* Software is furnished to do so, subject to the following conditions:      *)
(*                                                                           *)
(* The above copyright notice and this permission notice shall be included   *)
(* in all copies or substantial portions of the Software.                    *)
(*                                                                           *)
(* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR*)
(* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,  *)
(* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL   *)
(* THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER*)
(* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING   *)
(* FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER       *)
(* DEALINGS IN THE SOFTWARE.                                                 *)
(*                                                                           *)
(*****************************************************************************)

(** Double baking evidence operation may happen when a baker
    baked two different blocks on the same level. *)

open Protocol
open Alpha_context

(****************************************************************)
(*                  Utility functions                           *)
(****************************************************************)

let get_first_different_baker baker bakers =
  WithExceptions.Option.get ~loc:__LOC__
  @@ List.find
       (fun baker' -> Signature.Public_key_hash.( <> ) baker baker')
       bakers

let get_first_different_bakers ctxt =
  Context.get_bakers ctxt >|=? fun bakers ->
  let baker_1 = WithExceptions.Option.get ~loc:__LOC__ @@ List.hd bakers in
  get_first_different_baker
    baker_1
    (WithExceptions.Option.get ~loc:__LOC__ @@ List.tl bakers)
  |> fun baker_2 -> (baker_1, baker_2)

let get_first_different_endorsers ctxt =
  Context.get_endorsers ctxt >|=? fun endorsers ->
  let endorser_1 =
    (WithExceptions.Option.get ~loc:__LOC__ @@ List.hd endorsers).delegate
  in
  let endorser_2 =
    (WithExceptions.Option.get ~loc:__LOC__
    @@ List.hd (WithExceptions.Option.get ~loc:__LOC__ @@ List.tl endorsers))
      .delegate
  in
  (endorser_1, endorser_2)

(** Bake two block at the same level using the same policy (i.e. same
    baker) *)
let block_fork ?policy contracts b =
  let (contract_a, contract_b) =
    ( WithExceptions.Option.get ~loc:__LOC__ @@ List.hd contracts,
      WithExceptions.Option.get ~loc:__LOC__
      @@ List.hd (WithExceptions.Option.get ~loc:__LOC__ @@ List.tl contracts)
    )
  in
  Op.transaction (B b) contract_a contract_b Alpha_context.Tez.one_cent
  >>=? fun operation ->
  Block.bake ?policy ~operation b >>=? fun blk_a ->
  Block.bake ?policy b >|=? fun blk_b -> (blk_a, blk_b)

(****************************************************************)
(*                        Tests                                 *)
(****************************************************************)

(** Simple scenario where two blocks are baked by a same baker and
    exposed by a double baking evidence operation *)
let valid_double_baking_evidence () =
  Context.init 2 >>=? fun (b, contracts) ->
  Context.get_bakers (B b) >>=? fun bakers ->
  let priority_0_baker =
    WithExceptions.Option.get ~loc:__LOC__ @@ List.hd bakers
  in
  block_fork ~policy:(By_priority 0) contracts b >>=? fun (blk_a, blk_b) ->
  Op.double_baking (B blk_a) blk_a.header blk_b.header |> fun operation ->
  Block.bake ~policy:(Excluding [priority_0_baker]) ~operation blk_a
  >>=? fun blk ->
  (* Check that the frozen deposit, the fees and rewards are removed *)
  List.iter_es
    (fun kind ->
      let contract =
        Alpha_context.Contract.implicit_contract priority_0_baker
      in
      Assert.balance_is ~loc:__LOC__ (B blk) contract ~kind Tez.zero)
    [Deposit; Fees; Rewards]

(****************************************************************)
(*  The following test scenarios are supposed to raise errors.  *)
(****************************************************************)

(** Check that a double baking operation fails if it exposes the same two blocks *)
let same_blocks () =
  Context.init 2 >>=? fun (b, _contracts) ->
  Block.bake b >>=? fun ba ->
  Op.double_baking (B ba) ba.header ba.header |> fun operation ->
  Block.bake ~operation ba >>= fun res ->
  Assert.proto_error ~loc:__LOC__ res (function
      | Apply.Invalid_double_baking_evidence _ -> true
      | _ -> false)
  >>=? fun () -> return_unit

(** Check that a double baking operation exposing two blocks with
    different levels fails *)
let different_levels () =
  Context.init 2 >>=? fun (b, contracts) ->
  block_fork ~policy:(By_priority 0) contracts b >>=? fun (blk_a, blk_b) ->
  Block.bake blk_b >>=? fun blk_b_2 ->
  Op.double_baking (B blk_a) blk_a.header blk_b_2.header |> fun operation ->
  Block.bake ~operation blk_a >>= fun res ->
  Assert.proto_error ~loc:__LOC__ res (function
      | Apply.Invalid_double_baking_evidence _ -> true
      | _ -> false)

(** Check that a double baking operation exposing two yet to be baked
    blocks fails *)
let too_early_double_baking_evidence () =
  Context.init 2 >>=? fun (b, contracts) ->
  block_fork ~policy:(By_priority 0) contracts b >>=? fun (blk_a, blk_b) ->
  Op.double_baking (B b) blk_a.header blk_b.header |> fun operation ->
  Block.bake ~operation b >>= fun res ->
  Assert.proto_error ~loc:__LOC__ res (function
      | Apply.Too_early_double_baking_evidence _ -> true
      | _ -> false)

(** Check that after [preserved_cycles + 1], it is not possible to
    create a double baking operation anymore *)
let too_late_double_baking_evidence () =
  Context.init 2 >>=? fun (b, contracts) ->
  Context.get_constants (B b)
  >>=? fun Constants.{parametric = {preserved_cycles; _}; _} ->
  block_fork ~policy:(By_priority 0) contracts b >>=? fun (blk_a, blk_b) ->
  List.fold_left_es
    (fun blk _ -> Block.bake_until_cycle_end blk)
    blk_a
    (1 -- (preserved_cycles + 1))
  >>=? fun blk ->
  Op.double_baking (B blk) blk_a.header blk_b.header |> fun operation ->
  Block.bake ~operation blk >>= fun res ->
  Assert.proto_error ~loc:__LOC__ res (function
      | Apply.Outdated_double_baking_evidence _ -> true
      | _ -> false)

(** Check that an invalid double baking evidence that exposes two block
    baking with same level made by different bakers fails *)
let different_delegates () =
  Context.init 2 >>=? fun (b, _) ->
  get_first_different_bakers (B b) >>=? fun (baker_1, baker_2) ->
  Block.bake ~policy:(By_account baker_1) b >>=? fun blk_a ->
  Block.bake ~policy:(By_account baker_2) b >>=? fun blk_b ->
  Op.double_baking (B blk_a) blk_a.header blk_b.header |> fun operation ->
  Block.bake ~operation blk_a >>= fun e ->
  Assert.proto_error ~loc:__LOC__ e (function
      | Apply.Inconsistent_double_baking_evidence _ -> true
      | _ -> false)

let wrong_signer () =
  (* Baker_2 bakes a block but baker signs it. *)
  let header_custom_signer baker baker_2 b =
    Block.Forge.forge_header ~policy:(By_account baker_2) b >>=? fun header ->
    Block.Forge.set_baker baker header |> Block.Forge.sign_header
  in
  Context.init 2 >>=? fun (b, _) ->
  get_first_different_bakers (B b) >>=? fun (baker_1, baker_2) ->
  Block.bake ~policy:(By_account baker_1) b >>=? fun blk_a ->
  header_custom_signer baker_1 baker_2 b >>=? fun header_b ->
  Op.double_baking (B blk_a) blk_a.header header_b |> fun operation ->
  Block.bake ~operation blk_a >>= fun e ->
  Assert.proto_error ~loc:__LOC__ e (function
      | Baking.Invalid_block_signature _ -> true
      | _ -> false)

let tests =
  [
    Test_services.tztest
      "valid double baking evidence"
      `Quick
      valid_double_baking_evidence;
    (* Should fail*)
    Test_services.tztest "same blocks" `Quick same_blocks;
    Test_services.tztest "different levels" `Quick different_levels;
    Test_services.tztest
      "too early double baking evidence"
      `Quick
      too_early_double_baking_evidence;
    Test_services.tztest
      "too late double baking evidence"
      `Quick
      too_late_double_baking_evidence;
    Test_services.tztest "different delegates" `Quick different_delegates;
    Test_services.tztest "wrong delegate" `Quick wrong_signer;
  ]
