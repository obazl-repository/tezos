(*****************************************************************************)
(*                                                                           *)
(* Open Source License                                                       *)
(* Copyright (c) 2018 Dynamic Ledger Solutions, Inc. <contact@tezos.com>     *)
(* Copyright (c) 2018-2021 Nomadic Labs, <contact@nomadic-labs.com>          *)
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

type t = {
  state : Store.t;
  db : Distributed_db.t;
  block_validator : Block_validator.t;
  chain_validator_limits : Chain_validator.limits;
  peer_validator_limits : Peer_validator.limits;
  block_validator_limits : Block_validator.limits;
  prevalidator_limits : Prevalidator.limits;
  start_testchain : bool;
  valid_block_input : Store.Block.t Lwt_watcher.input;
  chains_input : (Chain_id.t * bool) Lwt_watcher.input;
  active_chains : Chain_validator.t Chain_id.Table.t;
}

let create state db peer_validator_limits block_validator_limits
    block_validator_kind prevalidator_limits chain_validator_limits
    ~start_testchain =
  Block_validator.create
    block_validator_limits
    db
    block_validator_kind
    ~start_testchain
  >>=? fun block_validator ->
  let valid_block_input = Lwt_watcher.create_input () in
  let chains_input = Lwt_watcher.create_input () in
  return
    {
      state;
      db;
      start_testchain;
      block_validator;
      block_validator_limits;
      prevalidator_limits;
      peer_validator_limits;
      chain_validator_limits;
      valid_block_input;
      chains_input;
      active_chains = Chain_id.Table.create 7;
    }

let activate v ~start_prevalidator ~validator_process chain_store =
  let chain_id = Store.Chain.chain_id chain_store in
  Validator_event.(emit activate_chain) chain_id >>= fun () ->
  match Chain_id.Table.find v.active_chains chain_id with
  | Some chain -> return chain
  | None ->
      Chain_validator.create
        ~start_prevalidator
        ~start_testchain:v.start_testchain
        ~active_chains:v.active_chains
        ~block_validator_process:validator_process
        v.peer_validator_limits
        v.prevalidator_limits
        v.block_validator
        v.valid_block_input
        v.chains_input
        v.db
        chain_store
        v.chain_validator_limits

let get {active_chains; _} chain_id =
  match Chain_id.Table.find active_chains chain_id with
  | Some nv -> Ok nv
  | None -> error (Validation_errors.Inactive_chain chain_id)

let get_active_chains {active_chains; _} =
  let l = Chain_id.Table.fold (fun c _ acc -> c :: acc) active_chains [] in
  List.rev l

let read_block store h =
  Store.all_chain_stores store >>= fun chain_stores ->
  Lwt_utils.find_map_s
    (fun chain_store ->
      Store.Block.read_block_opt chain_store h
      >|= Option.map (fun b -> (Store.Chain.chain_id chain_store, b)))
    chain_stores

let read_block_header db h =
  read_block (Distributed_db.store db) h
  >|= Option.map (fun (chain_id, block) -> (chain_id, Store.Block.header block))

let validate_block v ?(force = false) ?chain_id bytes operations =
  let hash = Block_hash.hash_bytes [bytes] in
  match Block_header.of_bytes bytes with
  | None -> failwith "Cannot parse block header."
  | Some block ->
      if not (Clock_drift.is_not_too_far_in_the_future block.shell.timestamp)
      then failwith "Block in the future."
      else
        (match chain_id with
        | None -> (
            read_block_header v.db block.shell.predecessor >>= function
            | None ->
                failwith
                  "Unknown predecessor (%a), cannot inject the block."
                  Block_hash.pp_short
                  block.shell.predecessor
            | Some (chain_id, _bh) -> Lwt.return (get v chain_id))
        | Some chain_id -> (
            Lwt.return (get v chain_id) >>=? fun nv ->
            if force then return nv
            else
              Distributed_db.Block_header.known
                (Chain_validator.chain_db nv)
                block.shell.predecessor
              >>= function
              | true -> return nv
              | false ->
                  failwith
                    "Unknown predecessor (%a), cannot inject the block."
                    Block_hash.pp_short
                    block.shell.predecessor))
        >>=? fun nv ->
        let validation =
          Chain_validator.validate_block nv ~force hash block operations
        in
        return (hash, validation)

let shutdown {active_chains; block_validator; _} =
  let chain_validator_jobs =
    List.of_seq
    @@ Seq.map
         (fun (id, nv) ->
           Validator_event.(emit shutdown_chain_validator) id >>= fun () ->
           Chain_validator.shutdown nv)
         (Chain_id.Table.to_seq active_chains)
  in
  (* Shutdown the chain_validator (peer_validators, prevalidator,
     etc.) before the block_validator *)
  Lwt.join chain_validator_jobs >>= fun () ->
  Validator_event.(emit shutdown_block_validator) () >>= fun () ->
  Block_validator.shutdown block_validator

let watcher {valid_block_input; _} = Lwt_watcher.create_stream valid_block_input

let chains_watcher {chains_input; _} = Lwt_watcher.create_stream chains_input

let inject_operation v ?chain_id op =
  (match chain_id with
  | None -> (
      read_block_header v.db op.Operation.shell.branch >>= function
      | None ->
          failwith
            "Unknown branch (%a), cannot inject the operation."
            Block_hash.pp_short
            op.shell.branch
      | Some (chain_id, _bh) -> Lwt.return (get v chain_id))
  | Some chain_id -> (
      Lwt.return (get v chain_id) >>=? fun nv ->
      Distributed_db.Block_header.known
        (Chain_validator.chain_db nv)
        op.shell.branch
      >>= function
      | true -> return nv
      | false ->
          failwith
            "Unknown branch (%a), cannot inject the operation."
            Block_hash.pp_short
            op.shell.branch))
  >>=? fun nv ->
  let pv_opt = Chain_validator.prevalidator nv in
  match pv_opt with
  | Some pv -> Prevalidator.inject_operation pv op
  | None -> failwith "Prevalidator is not running, cannot inject the operation."

let distributed_db {db; _} = db
