load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def tezos_deps():
    maybe(
        http_archive,
        "data-encoding",
        sha256 = "c1f906f1c1d2e701b34bc59e63331894c17a321ddd4c550489fb48f56a8b82d4",
        strip_prefix = "data-encoding-bazel-45f81196958ce180f0d8b6b253f1bb57483e0693",
        urls = [
            "https://gitlab.com/tryptoxin/data-encoding/-/archive/bazel/45f81196958ce180f0d8b6b253f1bb57483e0693.tar.gz",
        ],
    )
    maybe(
        http_archive,
        "conduit",
        sha256 = "9e332c0ba12f7e676f6f0f60034020fb1bd42681d7ea78c27c4192aa39b3ba68",
        strip_prefix = "ocaml-conduit-14cf5e1ffcaab6842157de1847e243ced4c98a0c",
        urls = ["https://github.com/tek/ocaml-conduit/archive/14cf5e1ffcaab6842157de1847e243ced4c98a0c.tar.gz"],
    )
