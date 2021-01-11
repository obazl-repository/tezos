(*****************************************************************************)
(*                                                                           *)
(* Open Source License                                                       *)
(* Copyright (c) 2020 Nomadic Labs, <contact@nomadic-labs.com>               *)
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

(* let () = assert (Sys.int_size = 63) *)

type _ t = int

type mul_safe

type may_saturate

let may_saturate : _ t -> may_saturate t = fun x -> x

let to_int x = x

let ( < ) : _ t -> _ t -> bool = Compare.Int.( < )

let ( <= ) : _ t -> _ t -> bool = Compare.Int.( <= )

let ( > ) : _ t -> _ t -> bool = Compare.Int.( > )

let ( >= ) : _ t -> _ t -> bool = Compare.Int.( >= )

let ( = ) : _ t -> _ t -> bool = Compare.Int.( = )

let equal = ( = )

let ( <> ) : _ t -> _ t -> bool = Compare.Int.( <> )

let max : _ t -> _ t -> _ t = fun x y -> if x >= y then x else y

let min : _ t -> _ t -> _ t = fun x y -> if x >= y then y else x

let compare : _ t -> _ t -> _ t = Compare.Int.compare

let saturated = max_int

let of_int_opt t = if t >= 0 && t < saturated then Some t else None

let of_z_opt z =
  match Z.to_int z with int -> of_int_opt int | exception Z.Overflow -> None

let to_z x = Z.of_int x

let zero = 0

let small_enough z =
  (* The following literal triggers an error if compiled under 32-bit
     architectures, please do not modify it. This is a static way to
     ensure that this file is compiled under a 64-bit architecture. *)
  z land 0x7fffffff80000000 = 0

let mul_safe x = if small_enough x then Some x else None

let mul x y =
  (* assert (x >= 0 && y >= 0); *)
  match x with
  | 0 ->
      0
  | x ->
      if small_enough x && small_enough y then x * y
      else if Compare.Int.(y > saturated / x) then saturated
      else x * y

let mul_fast x y = x * y

let scale_fast x y =
  if x = 0 then 0
  else if small_enough y then x * y
  else if Compare.Int.(y > saturated / x) then saturated
  else x * y

let add x y =
  let z = x + y in
  if z >= 0 then z else saturated

let sub x y = Compare.Int.max (x - y) 0

let sub_opt x y =
  let s = x - y in
  if Compare.Int.(s >= 0) then Some s else None

(* Notice that Z.erem does not behave as mod on negative numbers.
   Fortunately, the inhabitant of [t] are non-negative. *)
let erem x y = x mod y

let ediv x y = x / y

let t_to_z_exn z =
  match of_z_opt z with
  | None ->
      (* since the encoding is applied to values of type [t]. *) assert false
  | Some x ->
      x

let z_encoding = Data_encoding.(check_size 9 (conv to_z t_to_z_exn z))

let n_encoding = Data_encoding.(check_size 9 (conv to_z t_to_z_exn n))

let pp fmt x = Format.pp_print_int fmt x