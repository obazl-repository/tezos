load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def tezos_deps():
    maybe(
        http_archive,
        "resto",
        sha256 = "1fa037fc7428233ade2000be16ba3d85e333781aa9e0591c3777e5169a7d76d6",
        strip_prefix = "resto-bazel-cb07fc0a51c929cd1589935eb8be241ae779623a",
        urls = [
            "https://gitlab.com/tryptoxin/resto/-/archive/bazel/cb07fc0a51c929cd1589935eb8be241ae779623a.tar.gz",
        ],
    )
