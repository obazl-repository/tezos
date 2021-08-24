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
      # "ppxlib"
      # "ppx_deriving"
      # "ppx_sexp_conv"
      { name = "alcotest-lwt"; version = "1.1.0"; }
      # "angstrom"
      "async"
      # "base64"
      { name = "bls12-381-unix"; version = "0.4.3"; }
      { name = "bls12-381"; version = "0.4.3"; }
      # "ca-certs"
      { name = "camlzip"; version = "1.10"; }
      { name = "data-encoding"; version = "0.3"; }
      { name = "digestif"; version = "0.9.0"; }
      "fmt"
      { name = "ipaddr"; version = "5.0.0"; }
      # "ipaddr-sexp"
      { name = "irmin"; version = "2.5.4"; }
      { name = "irmin-pack"; version = "2.5.4"; }
      { name = "hacl"; version = "0.3"; }
      { name = "hacl-star"; version = "0.3.2"; }
      # "jsonm"
      # "logs"
      { name = "lwt"; version = "5.4.1"; }
      { name = "lwt-dllist"; version = "1.0.1"; }
      { name = "lwt-canceler"; version = "0.3"; }
      "lwt-exit"
      { name = "lwt-watcher"; version = "0.1"; }
      "lwt_log"
      # "lwt_ssl"
      # "magic-mime"
      { name = "ppx_inline_test"; version = "v0.14.1"; }
      # "re"
      { name = "resto-cohttp"; version = "0.6"; }
      { name = "resto-cohttp-server"; version = "0.6"; }
      { name = "ringo"; version = "0.5"; }
      { name = "ringo-lwt"; version = "0.5"; }
      "secp256k1-internal"
      # "sexplib"
      # "sexplib0"
      # "stringext"
      { name = "tar"; version = "1.1.0"; }
      { name = "tar-unix"; version = "1.1.0"; }
      { name = "tls"; version = "0.10.6"; }
      { name = "ocp-ocamlres"; version = "0.4"; }
      { name = "zarith"; version = "1.11"; }
    ];

  in obazl.systems { inherit extraInputs depsOpam; };
}
