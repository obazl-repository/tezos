{
  description = "OCaml: tezos";

  inputs.obazl.url = github:tek/rules_ocaml;

  outputs = { obazl, ... }:
  let
    extraInputs = p: [
      p.gmp
      p.openssl
      p.libffi
    ];

    depsOpam = [
      "angstrom"
      "async"
      "base64"
      "bls12-381"
      "ca-certs"
      "fmt"
      "ipaddr"
      "ipaddr-sexp"
      "hacl"
      "hacl-star"
      "jsonm"
      "logs"
      "lwt"
      "lwt-canceler"
      "lwt_ssl"
      "magic-mime"
      "ppx_deriving"
      "ppx_sexp_conv"
      "ppxlib"
      "re"
      "ringo"
      "secp256k1-internal"
      "sexplib"
      "sexplib0"
      "stringext"
      "tls"
    ];

  in obazl.flakes { inherit extraInputs depsOpam; };
}
