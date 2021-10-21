# notes

## testing:

### opam deps:

NB: building `ocaml_import` will report "nothing to build" and show no
output, even with `--output_groups`, since it only exports source files,
not generated files. So to verify you must build a module that depends
on imports and check the input. Or use 'print' in ocaml_import.

good simple dep chain:

@ocaml//lib/ctypes/stubs
    => @ocaml//lib/str
    => @ocaml//lib/ctypes
        => @ocaml//lib/{bigarray-compat, bytes, integers}

@ocaml//lib/bls12-381

### simple modules

src/lib_sapling/bindings:rustzcash_ctypes_gen
depends on:
src/lib_sapling/bindings:rustzcash_ctypes_bindings

NOTE: "for f in ctx.files.deps" only iterates over DefaultInfo.files!
so e.g. doing it for rustzcash_ctypes_bindings will give no results,
because 'deps' contains only ocaml_import targets (opam pkgs), which
are exported in custom providers, not DefaultInfo.

### cc

depends on:

* `@ocaml//csdk`
* `@ocaml//lib/ctypes/stubs`
  * `@ocaml//lib/ctypes`
* `@ocaml//lib/ctypes:csdk`  (headers only)
* `@tezos-rust-libs//:librustzcash`

Build targets:

* ml srcs:
  * `src/lib_sapling/bindings:rustzcash_ctypes_bindings`
    * builds `rustzcash_ctypes_bindings.ml`
  * generated: `src/lib_sapling/bindings:rustzcash_ctypes_gen`
    * builds `rustzcash_ctypes_gen.ml`

* cc_library: `src/lib_sapling/bindings:rustzcash_ctypes_c_stubs`
  * `@ocaml//csdk`
  * `@ocaml//lib/ctypes:csdk`
  * `@tezos-rust-libs//:librustzcash`

* bindings:
  * ml: `src/lib_sapling/bindings:rustzcash_ctypes_stubs`
    * struct: `src/lib_sapling/bindings:rustzcash_ctypes_stubs.ml`
    * ?? cc_deps: `src/lib_sapling/bindings:rustzcash_ctypes_c_stubs`
  * ml: `src/lib_sapling:rustzcash`
    * deps:
      * `//src/lib_sapling/bindings:rustzcash_ctypes_bindings`
      * `//src/lib_sapling/bindings:rustzcash_ctypes_stubs`
        * indirect cc_deps `src/lib_sapling/bindings:rustzcash_ctypes_c_stubs`

* ns lib: `//src/lib_sapling:Tezos_sapling`
  * submodules:
    * `:core`
      * `:rustzcash`
        * `//src/lib_sapling/bindings:rustzcash_ctypes_stubs`
          * cc_dep: `src/lib_sapling/bindings:rustzcash_ctypes_c_stubs`




### ppx

src/lib_stdlib:ppx

src/lib_stdlib:bits

ppx adjunct deps:

### namespaces

ns_archive & ns_library:

3 simple submodules:
src/lib_lwt_result_stdlib/bare/functor_outputs:Bare_functor_outputs

depends on prev
src/lib_lwt_result_stdlib/bare/sigs:#Bare_sigs


### exe

src/lib_sapling/bindings:rustzcash_ctypes_gen.exe


genrule:

src/lib_sapling/bindings:[rustzcash_ctypes_stubs.ml, rustzcash_ctypes_c_stubs.c]

################
 bazel query "somepath(//src/bin_node:exe-tezos-node, //src/lib_lwt_result_stdlib/bare/functor_outputs:Bare_functor_outputs)" --notool_deps --output graph

digraph mygraph {
  node [shape=box];
  "//src/bin_node:exe-tezos-node"
  "//src/bin_node:exe-tezos-node" -> "//src/bin_node:main"
  "//src/bin_node:main"
  "//src/bin_node:main" -> "//src/lib_lwt_result_stdlib:Tezos_lwt_result_stdlib"
  "//src/bin_node:main" -> "//src/lib_stdlib_unix:Tezos_stdlib_unix"
  "//src/lib_stdlib_unix:Tezos_stdlib_unix"
  "//src/lib_stdlib_unix:Tezos_stdlib_unix" -> "//src/lib_stdlib_unix:animation"
  "//src/lib_stdlib_unix:Tezos_stdlib_unix" -> "//src/lib_lwt_result_stdlib:Tezos_lwt_result_stdlib"
  "//src/lib_stdlib_unix:animation"
  "//src/lib_stdlib_unix:animation" -> "//src/lib_lwt_result_stdlib:Tezos_lwt_result_stdlib"
  "//src/lib_lwt_result_stdlib:Tezos_lwt_result_stdlib"
  "//src/lib_lwt_result_stdlib:Tezos_lwt_result_stdlib" -> "//src/lib_lwt_result_stdlib:lwtreslib"
  "//src/lib_lwt_result_stdlib:lwtreslib"
  "//src/lib_lwt_result_stdlib:lwtreslib" -> "//src/lib_lwt_result_stdlib/bare/sigs:Bare_sigs"
  "//src/lib_lwt_result_stdlib/bare/sigs:Bare_sigs"
  "//src/lib_lwt_result_stdlib/bare/sigs:Bare_sigs" -> "//src/lib_lwt_result_stdlib/bare/sigs:hashtbl"
  "//src/lib_lwt_result_stdlib/bare/sigs:Bare_sigs" -> "//src/lib_lwt_result_stdlib/bare/functor_outputs:Bare_functor_outputs"
  "//src/lib_lwt_result_stdlib/bare/sigs:hashtbl"
  "//src/lib_lwt_result_stdlib/bare/sigs:hashtbl" -> "//src/lib_lwt_result_stdlib/bare/functor_outputs:Bare_functor_outputs"
  "//src/lib_lwt_result_stdlib/bare/functor_outputs:Bare_functor_outputs"

### troubleshooting

The OCaml compiler may write out and then compile assembler source
files. This can cause trouble, since Bazel does not know about such files.

`bazel build src/bin_node:exe-tezos-node`:

clang -cc1as: error: unable to open output file 'bazel-out/darwin-fastbuild-ST-c9bb24aa13e4/bin/external/ocaml/ns/Bare_functor_outputs.o': 'Permission denied'
File "/private/var/tmp/_bazel_gar/415948fbf5e9829b93ec2c3944ef2e73/sandbox/darwin-sandbox/3634/execroot/tezos/bazel-out/darwin-fastbuild-ST-c9bb24aa13e4/bin/external/ocaml/ns/Bare_functor_outputs.ml", line 1:
Error: Assembler error, input left in file /var/folders/wz/dx0cgvqx5qn802qmc3d4hcfr0000gq/T/camlasm9944c6.s
Target //src/bin_node:exe-tezos-node failed to build

With -verbose:

+ clang -arch x86_64 -Wno-trigraphs -c  -o 'bazel-out/darwin-fastbuild-ST-c9bb24aa13e4/bin/external/ocaml/ns/Bare_functor_outputs.o' '/var/folders/wz/dx0cgvqx5qn802qmc3d4hcfr0000gq/T/camlasm27edc5.s'
clang -cc1as: error: unable to open output file 'bazel-out/darwin-fastbuild-ST-c9bb24aa13e4/bin/external/ocaml/ns/Bare_functor_outputs.o': 'Permission denied'
File "/private/var/tmp/_bazel_gar/415948fbf5e9829b93ec2c3944ef2e73/sandbox/darwin-sandbox/3635/execroot/tezos/bazel-out/darwin-fastbuild-ST-c9bb24aa13e4/bin/external/ocaml/ns/Bare_functor_outputs.ml", line 1:
Error: Assembler error, input left in file /var/folders/wz/dx0cgvqx5qn802qmc3d4hcfr0000gq/T/camlasm27edc5.s
Target //src/bin_node:exe-tezos-node failed to build

This is odd since presumably Bare_functor_outputs is already built by the time we try to build the executable.

The problem turned out to be ridiculously simple: the .ml file was
inadvertently listed on the command line, so OCaml tried to compile it.

So this is a quirk of OCaml: to build an executable, we can provide source files on the command line, evidently. Currently the `ocaml_executable` rule only takes compiled module deps and just links them.
