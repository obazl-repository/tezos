load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def tezos_deps():
    maybe(
        http_archive,
        "obazl_rules_ocaml",
        strip_prefix = "rules_ocaml-266fe443f8b70ab60d7a02a1fd363d632b1a67a3",
        urls = [
            "https://github.com/tek/rules_ocaml/archive/266fe443f8b70ab60d7a02a1fd363d632b1a67a3.tar.gz",
        ],
        sha256 = "47c124b0d03a087d413cd1ed7adbe0ab57cbe0ba763aadcb1d3400346f2c40eb",
    )
    maybe(
        http_archive,
        "resto",
        sha256 = "c683e70938c5c8d7081ec85ec6b551e92995a4cdd529c693b2bd47aabca57637",
        strip_prefix = "resto-bazel-ce626d3dedd380ebb1db7f177527ee06f327c304",
        urls = [
            "https://gitlab.com/tryptoxin/resto/-/archive/bazel/ce626d3dedd380ebb1db7f177527ee06f327c304.tar.gz",
        ],
    )
