load("@obazl_rules_ocaml//ocaml:providers.bzl",
     "OcamlProvider",
     "OcamlModuleMarker")

def extract_sig_impl(ctx):
    # deps = ctx.attr.mod[OcamlModuleProvider].depgraph.to_list()
    deps = ctx.attr.mod[OcamlProvider].files.to_list()
    cmis = [c for c in deps if c.extension == "cmi"]
    output = ctx.actions.declare_file(ctx.attr.out + ".cmi")
    ctx.actions.symlink(output = output, target_file = cmis[0])
    return [
        DefaultInfo(files = depset(direct = [output]))
    ]

extract_sig = rule(
    implementation = extract_sig_impl,
    attrs = dict(
        mod = attr.label(
            providers = [[OcamlModuleMarker]],
        ),
        out = attr.string(),
    ),
)
