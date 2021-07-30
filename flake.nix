{
  description = "OCaml: tezos";

  inputs.obazl.url = github:tek/rules_ocaml;

  outputs = { obazl, ... }:
  let
    extraInputs = p: [
      p.gmp
      p.openssl
      p.libffi
      p.zlib
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
      { name = "camlzip"; version = "1.10"; }
      "data-encoding"
      "digestif"
      "fmt"
      "ipaddr"
      "ipaddr-sexp"
      "irmin"
      "irmin-pack"
      "hacl"
      "hacl-star"
      "jsonm"
      "logs"
      { name = "lwt"; version = "5.4.1"; }
      { name = "lwt-dllist"; version = "1.0.1"; }
      { name = "lwt-canceler"; version = "0.3"; }
      "lwt-exit"
      { name = "lwt-watcher"; version = "0.1"; }
      "lwt_log"
      "lwt_ssl"
      "magic-mime"
      "ppx_deriving"
      "ppx_sexp_conv"
      { name = "ppx_inline_test"; version = "v0.14.1"; }
      "ppxlib"
      "re"
      { name = "resto-cohttp"; version = "0.6"; }
      { name = "resto-cohttp-server"; version = "0.6"; }
      "ringo"
      { name = "ringo-lwt"; version = "0.5"; }
      "secp256k1-internal"
      "sexplib"
      "sexplib0"
      "stringext"
      { name = "tar"; version = "1.1.0"; }
      { name = "tar-unix"; version = "1.1.0"; }
      "tls"
      { name = "ocp-ocamlres"; version = "0.4"; }
      { name = "zarith"; version = "1.11"; }
    ];

  in obazl.flakes { inherit extraInputs depsOpam; };
}
