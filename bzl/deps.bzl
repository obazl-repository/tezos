load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def tezos_deps():
    maybe(
        http_archive,
        "obazl_rules_ocaml",
        strip_prefix = "rules_ocaml-0eccc2bffcdd4ba02afcfffaae03b627f837f64f",
        url = "https://github.com/tek/rules_ocaml/archive/0eccc2bffcdd4ba02afcfffaae03b627f837f64f.tar.gz",
        sha256 = "f07d3b3b4fbf59c571c19bb86cd6faa4ba297924f4b1dc664087324a32c86501",
    )
