load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def tezos_deps():
    maybe(
        http_archive,
        "resto",
        sha256 = "f2a10fa9d92ec416d499d1e685bda70d96297b4e26941623272eed47507c133b",
        strip_prefix = "resto-bazel-395e81a9727eee4109cd89f372e0268bb1e03524",
        urls = [
            "https://gitlab.com/tryptoxin/resto/-/archive/bazel/395e81a9727eee4109cd89f372e0268bb1e03524.tar.gz",
        ],
    )
