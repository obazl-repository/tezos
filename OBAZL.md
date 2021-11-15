# obazl notes

## hand-rolled BUILD.bazel files

The BUILD.bazel files for the following packages cannot yet be
automatically generated, so they contain custom edits. If you rerun
the conversion, the edits must be restored.

* `src/bin_node` - problem with codept, multiple main.ml files
* `src/lib_base` - add dep `P2p_peer_id` to Point_parser (ocamllex output)
* `src/lib_context/encoding` - deferred binding @digestif//c
* `src/lib_crypto` - deferred binding @bls12-381-unix//:bls12-381-unix
* `src/lib_protocol_compiler` - namespaced cmi dep
* `src/lib_protocol_environment/sigs` - namespaced cmi dep
* `src/lib_sapling` - CC dep
* `src/lib_sapling/bindings` - CC dep
* `src/lib_stdlib` - add `@ppx_inline_test//runtime-lib` (tmp fix)
* `vendors/ocaml-lmdb/src` - CC dep

## bugs

Syntax error in `src/lib_protocol_environment/sigs/v0.dune.inc`

 (action (with-stdout-to %{targets} (chdir %{workspace_root}}
          (run %{libexec:tezos-protocol-environment-packer:s_packer} "sigs" %{deps})))))

That looks like an extra '}' after `%{workspace_root}`. So we removed it.

Same in all four `.dune.inc` files, and same in the `structs` subdir.
