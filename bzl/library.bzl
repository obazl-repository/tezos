load(
    "@obazl_rules_ocaml//ocaml:rules.bzl",
    "ocaml_library",
    "ocaml_module",
    "ocaml_ns_library",
    "ocaml_signature",
    "ppx_library",
    "ppx_module",
    "ppx_ns_library",
)
load("@bazel_skylib//rules:copy_file.bzl", "copy_file")

def copy_interface(name, out):
    copy_file(
        name = name + "_mli",
        src = name + ".mli",
        out = "__obazl/" + out + ".mli",
    )

def sig_module(name, conf, deps, ppx = False, **kw):
    struct = conf.get("mod", name + ".ml")
    sig = conf.get("sig_src", name + "_sig" if conf.get("sig", False) else None)
    all_deps = deps + conf.get("deps", [])
    if sig != None:
        ocaml_signature(
            name = sig,
            src = conf.get("sig_src", name + ".mli"),
            deps = all_deps,
            **kw
        )
    cons = ppx_module if ppx else ocaml_module
    cons(
        name = name,
        struct = struct,
        deps = all_deps,
        sig = sig,
        **kw
    )
    return name

def lib(name, modules, ns = True, deps = [], ppx = False, **kw):
    lib_name = "lib-" + name
    ns_name = "#" + name.capitalize().replace("-", "_")
    targets = [sig_module(mod_name, conf, deps, ppx = ppx, **kw) for (mod_name, conf) in modules.items()]
    cons = ppx_library if ppx else ocaml_library
    cons_ns = ppx_ns_library if ppx else ocaml_ns_library
    cons(
        name = lib_name,
        modules = targets,
        visibility = ["//visibility:public"],
    )
    if ns:
        cons_ns(
            name = ns_name,
            submodules = targets,
            visibility = ["//visibility:public"],
        )

def simple_lib(modules, sig = True, **kw):
    targets = dict([(name, dict(deps = deps, sig = sig)) for (name, deps) in modules.items()])
    return lib(targets, **kw)

def sig(*deps, **kw):
    return dict(sig = True, deps = list(deps), **kw)

def mod(*deps, **kw):
    return dict(deps = list(deps), **kw)
