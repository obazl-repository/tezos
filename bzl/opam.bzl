load("@obazl_rules_ocaml//ocaml:providers.bzl", "BuildConfig", "OpamConfig")

# if this is empty, OBazl fails
opam_pkgs = {
    "ocaml": [],
}

opam = OpamConfig(
    version = "2.0",
    builds = {
        "4.10": BuildConfig(
            default = True,
            switch = "4.10",
            compiler = "4.10",
            packages = opam_pkgs,
            install = True,
        ),
    },
)

librustzcash = """
cc_import(
    name = "librustzcash-internal",
    hdrs = glob(["tezos-rust-libs/*.h"]),
    static_library = "tezos-rust-libs/librustzcash.a",
    alwayslink = 1,
    visibility = ["//visibility:public"],
)

cc_library(
    name = "librustzcash",
    hdrs = glob(["tezos-rust-libs/*.h"]),
    deps = [":librustzcash-internal"],
    visibility = ["//visibility:public"],
    strip_include_prefix = "tezos-rust-libs",
)

cc_library(
    name = "ctypes",
    hdrs = glob(["ctypes/*.h"]),
    visibility = ["//visibility:public"],
    strip_include_prefix = "ctypes",
)

cc_library(
    name = "ocaml",
    hdrs = glob(["ocaml/caml/*.h", "ocaml/caml/*.tbl"]),
    visibility = ["//visibility:public"],
    strip_include_prefix = "ocaml",
)

exports_files(["bin/ocp-ocamlres"] + glob(["ocaml/*.cmi"]))
"""

def _opam_repo_impl(ctx):
    ctx.symlink("/home/tek/.opam/4.10/lib/tezos-rust-libs", "tezos-rust-libs")
    ctx.symlink("/home/tek/.opam/4.10/lib/ctypes", "ctypes")
    ctx.symlink("/home/tek/.opam/4.10/lib/ocaml", "ocaml")
    ctx.symlink("/home/tek/.opam/4.10/bin/ocp-ocamlres", "bin/ocp-ocamlres")
    ctx.file("BUILD.bazel", content = librustzcash, executable = False)

_opam_repo = repository_rule(
    implementation = _opam_repo_impl
)

def opam_repo(switch):
    _opam_repo(name = "opam_libs")
