load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

###############  OBazl Deps ###############
def obazl_deps():
    maybe(
        git_repository,
        name = "obazl_tools_obazl",
        remote = "https://github.com/obazl/tools_obazl",
        branch = "dev",
    )

    maybe(
        git_repository,
        name = "opam",
        remote = "https://github.com/obazl/tools_opam",
        branch = "obazl2",
    )

    maybe(
        git_repository,
        name = "obazl_rules_ocaml",
        remote = "https://github.com/obazl/rules_ocaml",
        branch = "obazl2",
    )
