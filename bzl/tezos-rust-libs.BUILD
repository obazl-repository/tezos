# WARNING: to use this cc_import, you must pass
# build --experimental_starlark_cc_import
load("@bazel_tools//tools/build_defs/cc:cc_import.bzl", "cc_import")

cc_import(
    name = "librustzcash",
    hdrs = ["librustzcash.h"],
    static_library = "librustzcash.a",
    linkopts = ["-DTEZOS_LIB"],
    alwayslink = 1,
    visibility = ["//visibility:public"],
)

