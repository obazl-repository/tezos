load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def tezos_deps():
    maybe(
        http_archive,
        "obazl_rules_ocaml",
        strip_prefix = "rules_ocaml-041a40bdc0f7409e8a02a8b668a23e7f89dced01",
        url = "https://github.com/tek/rules_ocaml/archive/041a40bdc0f7409e8a02a8b668a23e7f89dced01.tar.gz",
        sha256 = "c1ef8edd1da7fdda2117d8f430fbbc48de6817c1c41b28a8f5da9cc02da47d11",
    )
