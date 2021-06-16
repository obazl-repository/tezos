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

    # NOTE: the package `bls12-381-unix` has a dependency on a rust library that fails to build with nix due to
    # interpreter paths being patched, resulting in an sha mismatch.
    # To fix this, the patch script `.opam/opam-init/hooks/shebangs.sh` must be suspended by commenting out its last
    # line when installing that dependency.
    depsOpam = [
      "alcotest-lwt"
      "angstrom"
      "async"
      "base64"
      "bls12-381"
      "bls12-381-unix"
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
