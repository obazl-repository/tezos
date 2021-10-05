load("@obazl_rules_ocaml//ocaml/_repo_rules:new_local_pkg_repository.bzl",
     "new_local_pkg_repository")

def fetch():
    new_local_pkg_repository(
        name       = "ppx_fixed_literal",
        build_file = "@//.opam/buildfiles/ppx_fixed_literal:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ppx_fixed_literal",
    )

    new_local_pkg_repository(
        name       = "conduit-lwt-unix",
        build_file = "@//.opam/buildfiles/conduit-lwt-unix:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/conduit-lwt-unix",
    )

    new_local_pkg_repository(
        name       = "time_now",
        build_file = "@//.opam/buildfiles/time_now:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/time_now",
    )

    new_local_pkg_repository(
        name       = "cstruct-sexp",
        build_file = "@//.opam/buildfiles/cstruct-sexp:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/cstruct-sexp",
    )

    new_local_pkg_repository(
        name       = "bheap",
        build_file = "@//.opam/buildfiles/bheap:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/bheap",
    )

    new_local_pkg_repository(
        name       = "metrics",
        build_file = "@//.opam/buildfiles/metrics:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/metrics",
    )

    new_local_pkg_repository(
        name       = "bigarray-compat",
        build_file = "@//.opam/buildfiles/bigarray-compat:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/bigarray-compat",
    )

    new_local_pkg_repository(
        name       = "ppx_string",
        build_file = "@//.opam/buildfiles/ppx_string:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ppx_string",
    )

    new_local_pkg_repository(
        name       = "magic-mime",
        build_file = "@//.opam/buildfiles/magic-mime:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/magic-mime",
    )

    new_local_pkg_repository(
        name       = "asn1-combinators",
        build_file = "@//.opam/buildfiles/asn1-combinators:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/asn1-combinators",
    )

    new_local_pkg_repository(
        name       = "uri-sexp",
        build_file = "@//.opam/buildfiles/uri-sexp:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/uri-sexp",
    )

    new_local_pkg_repository(
        name       = "pprint",
        build_file = "@//.opam/buildfiles/pprint:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/pprint",
    )

    new_local_pkg_repository(
        name       = "mirage-crypto-rng",
        build_file = "@//.opam/buildfiles/mirage-crypto-rng:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/mirage-crypto-rng",
        subpackages = {
            "@//.opam/buildfiles/mirage-crypto-rng/lwt:BUILD.bazel":
            "lwt /Users/gar/.opam/4.10/lib/mirage-crypto-rng/lwt",

            "@//.opam/buildfiles/mirage-crypto-rng/unix:BUILD.bazel":
            "unix /Users/gar/.opam/4.10/lib/mirage-crypto-rng/unix",

        }
    )

    new_local_pkg_repository(
        name       = "ctypes",
        build_file = "@//.opam/buildfiles/ctypes:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ctypes",
        subpackages = {
            "@//.opam/buildfiles/ctypes/top:BUILD.bazel":
            "top /Users/gar/.opam/4.10/lib/ctypes",

            "@//.opam/buildfiles/ctypes/stubs:BUILD.bazel":
            "stubs /Users/gar/.opam/4.10/lib/ctypes",

            "@//.opam/buildfiles/ctypes/foreign:BUILD.bazel":
            "foreign /Users/gar/.opam/4.10/lib/ctypes",

        }
    )

    new_local_pkg_repository(
        name       = "ocb-stubblr",
        build_file = "@//.opam/buildfiles/ocb-stubblr:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ocb-stubblr",
        subpackages = {
            "@//.opam/buildfiles/ocb-stubblr/topkg:BUILD.bazel":
            "topkg /Users/gar/.opam/4.10/lib/ocb-stubblr",

        }
    )

    new_local_pkg_repository(
        name       = "cmdliner",
        build_file = "@//.opam/buildfiles/cmdliner:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/cmdliner",
    )

    new_local_pkg_repository(
        name       = "eqaf",
        build_file = "@//.opam/buildfiles/eqaf:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/eqaf",
        subpackages = {
            "@//.opam/buildfiles/eqaf/bigstring:BUILD.bazel":
            "bigstring /Users/gar/.opam/4.10/lib/eqaf/bigstring",

            "@//.opam/buildfiles/eqaf/cstruct:BUILD.bazel":
            "cstruct /Users/gar/.opam/4.10/lib/eqaf/cstruct",

        }
    )

    new_local_pkg_repository(
        name       = "ipaddr-sexp",
        build_file = "@//.opam/buildfiles/ipaddr-sexp:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ipaddr-sexp",
    )

    new_local_pkg_repository(
        name       = "afl-persistent",
        build_file = "@//.opam/buildfiles/afl-persistent:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/afl-persistent",
    )

    new_local_pkg_repository(
        name       = "ppx_sexp_value",
        build_file = "@//.opam/buildfiles/ppx_sexp_value:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ppx_sexp_value",
    )

    new_local_pkg_repository(
        name       = "sexplib",
        build_file = "@//.opam/buildfiles/sexplib:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/sexplib",
        subpackages = {
            "@//.opam/buildfiles/sexplib/num:BUILD.bazel":
            "num /Users/gar/.opam/4.10/lib/sexplib/num",

            "@//.opam/buildfiles/sexplib/unix:BUILD.bazel":
            "unix /Users/gar/.opam/4.10/lib/sexplib/unix",

        }
    )

    new_local_pkg_repository(
        name       = "topkg",
        build_file = "@//.opam/buildfiles/topkg:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/topkg",
        subpackages = {
            "@//.opam/buildfiles/topkg/care:BUILD.bazel":
            "care /Users/gar/.opam/4.10/lib/topkg/../topkg-care",

        }
    )

    new_local_pkg_repository(
        name       = "ppx_let",
        build_file = "@//.opam/buildfiles/ppx_let:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ppx_let",
        subpackages = {
            "@//.opam/buildfiles/ppx_let/expander:BUILD.bazel":
            "expander /Users/gar/.opam/4.10/lib/ppx_let/expander",

        }
    )

    new_local_pkg_repository(
        name       = "ezjsonm",
        build_file = "@//.opam/buildfiles/ezjsonm:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ezjsonm",
    )

    new_local_pkg_repository(
        name       = "either",
        build_file = "@//.opam/buildfiles/either:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/either",
    )

    new_local_pkg_repository(
        name       = "ppx_optcomp",
        build_file = "@//.opam/buildfiles/ppx_optcomp:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ppx_optcomp",
    )

    new_local_pkg_repository(
        name       = "csexp",
        build_file = "@//.opam/buildfiles/csexp:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/csexp",
    )

    new_local_pkg_repository(
        name       = "digestif",
        build_file = "@//.opam/buildfiles/digestif:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/digestif",
        subpackages = {
            "@//.opam/buildfiles/digestif/c:BUILD.bazel":
            "c /Users/gar/.opam/4.10/lib/digestif/c",

            "@//.opam/buildfiles/digestif/ocaml:BUILD.bazel":
            "ocaml /Users/gar/.opam/4.10/lib/digestif/ocaml",

            "@//.opam/buildfiles/digestif/rakia:BUILD.bazel":
            "rakia /Users/gar/.opam/4.10/lib/digestif/rakia",

        }
    )

    new_local_pkg_repository(
        name       = "result",
        build_file = "@//.opam/buildfiles/result:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/result",
    )

    new_local_pkg_repository(
        name       = "bigstringaf",
        build_file = "@//.opam/buildfiles/bigstringaf:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/bigstringaf",
    )

    new_local_pkg_repository(
        name       = "uuidm",
        build_file = "@//.opam/buildfiles/uuidm:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/uuidm",
    )

    new_local_pkg_repository(
        name       = "cstruct",
        build_file = "@//.opam/buildfiles/cstruct:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/cstruct",
    )

    new_local_pkg_repository(
        name       = "ppx_irmin",
        build_file = "@//.opam/buildfiles/ppx_irmin:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ppx_irmin",
    )

    new_local_pkg_repository(
        name       = "extlib",
        build_file = "@//.opam/buildfiles/extlib:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/extlib",
    )

    new_local_pkg_repository(
        name       = "timezone",
        build_file = "@//.opam/buildfiles/timezone:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/timezone",
    )

    new_local_pkg_repository(
        name       = "core",
        build_file = "@//.opam/buildfiles/core:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/core",
        subpackages = {
            "@//.opam/buildfiles/core/bigbuffer_blocking:BUILD.bazel":
            "bigbuffer_blocking /Users/gar/.opam/4.10/lib/core/bigbuffer_blocking",

            "@//.opam/buildfiles/core/bigstring_unix:BUILD.bazel":
            "bigstring_unix /Users/gar/.opam/4.10/lib/core/bigstring_unix",

            "@//.opam/buildfiles/core/daemon:BUILD.bazel":
            "daemon /Users/gar/.opam/4.10/lib/core/daemon",

            "@//.opam/buildfiles/core/error_checking_mutex:BUILD.bazel":
            "error_checking_mutex /Users/gar/.opam/4.10/lib/core/error_checking_mutex",

            "@//.opam/buildfiles/core/iobuf_unix:BUILD.bazel":
            "iobuf_unix /Users/gar/.opam/4.10/lib/core/iobuf_unix",

            "@//.opam/buildfiles/core/linux_ext:BUILD.bazel":
            "linux_ext /Users/gar/.opam/4.10/lib/core/linux_ext",

            "@//.opam/buildfiles/core/lock_file_blocking:BUILD.bazel":
            "lock_file_blocking /Users/gar/.opam/4.10/lib/core/lock_file_blocking",

            "@//.opam/buildfiles/core/nano_mutex:BUILD.bazel":
            "nano_mutex /Users/gar/.opam/4.10/lib/core/nano_mutex",

            "@//.opam/buildfiles/core/process_env:BUILD.bazel":
            "process_env /Users/gar/.opam/4.10/lib/core/process_env",

            "@//.opam/buildfiles/core/squeue:BUILD.bazel":
            "squeue /Users/gar/.opam/4.10/lib/core/squeue",

            "@//.opam/buildfiles/core/syslog:BUILD.bazel":
            "syslog /Users/gar/.opam/4.10/lib/core/syslog",

            "@//.opam/buildfiles/core/time_stamp_counter:BUILD.bazel":
            "time_stamp_counter /Users/gar/.opam/4.10/lib/core/time_stamp_counter",

            "@//.opam/buildfiles/core/top:BUILD.bazel":
            "top /Users/gar/.opam/4.10/lib/core/top",

            "@//.opam/buildfiles/core/uuid:BUILD.bazel":
            "uuid /Users/gar/.opam/4.10/lib/core/uuid",

            "@//.opam/buildfiles/core/syntax:BUILD.bazel":
            "syntax /Users/gar/.opam/4.10/lib",

        }
    )

    new_local_pkg_repository(
        name       = "ptime",
        build_file = "@//.opam/buildfiles/ptime:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ptime",
        subpackages = {
            "@//.opam/buildfiles/ptime/top:BUILD.bazel":
            "top /Users/gar/.opam/4.10/lib/ptime",

            "@//.opam/buildfiles/ptime/clock:BUILD.bazel":
            "clock /Users/gar/.opam/4.10/lib/ptime",

            "@//.opam/buildfiles/ptime/clock/os:BUILD.bazel":
            "clock/os /Users/gar/.opam/4.10/lib/ptime/os",

            "@//.opam/buildfiles/ptime/clock/os/top:BUILD.bazel":
            "clock/os/top /Users/gar/.opam/4.10/lib/ptime/os",

            "@//.opam/buildfiles/ptime/clock/jsoo:BUILD.bazel":
            "clock/jsoo /Users/gar/.opam/4.10/lib/ptime/jsoo",

        }
    )

    new_local_pkg_repository(
        name       = "ounit2",
        build_file = "@//.opam/buildfiles/ounit2:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ounit2",
        subpackages = {
            "@//.opam/buildfiles/ounit2/advanced:BUILD.bazel":
            "advanced /Users/gar/.opam/4.10/lib/ounit2/advanced",

            "@//.opam/buildfiles/ounit2/threads:BUILD.bazel":
            "threads /Users/gar/.opam/4.10/lib/ounit2/threads",

        }
    )

    new_local_pkg_repository(
        name       = "hex",
        build_file = "@//.opam/buildfiles/hex:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/hex",
    )

    new_local_pkg_repository(
        name       = "yojson",
        build_file = "@//.opam/buildfiles/yojson:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/yojson",
        subpackages = {
            "@//.opam/buildfiles/yojson/biniou:BUILD.bazel":
            "biniou /Users/gar/.opam/4.10/lib/yojson",

        }
    )

    new_local_pkg_repository(
        name       = "conduit",
        build_file = "@//.opam/buildfiles/conduit:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/conduit",
    )

    new_local_pkg_repository(
        name       = "progress",
        build_file = "@//.opam/buildfiles/progress:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/progress",
        subpackages = {
            "@//.opam/buildfiles/progress/unix:BUILD.bazel":
            "unix /Users/gar/.opam/4.10/lib/progress/unix",

        }
    )

    new_local_pkg_repository(
        name       = "raw_spacetime",
        build_file = "@//.opam/buildfiles/raw_spacetime:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/raw_spacetime",
    )

    new_local_pkg_repository(
        name       = "bytes",
        build_file = "@//.opam/buildfiles/bytes:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/bytes",
    )

    new_local_pkg_repository(
        name       = "ppx_expect",
        build_file = "@//.opam/buildfiles/ppx_expect:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ppx_expect",
        subpackages = {
            "@//.opam/buildfiles/ppx_expect/collector:BUILD.bazel":
            "collector /Users/gar/.opam/4.10/lib/ppx_expect/collector",

            "@//.opam/buildfiles/ppx_expect/common:BUILD.bazel":
            "common /Users/gar/.opam/4.10/lib/ppx_expect/common",

            "@//.opam/buildfiles/ppx_expect/config:BUILD.bazel":
            "config /Users/gar/.opam/4.10/lib/ppx_expect/config",

            "@//.opam/buildfiles/ppx_expect/config_types:BUILD.bazel":
            "config_types /Users/gar/.opam/4.10/lib/ppx_expect/config_types",

            "@//.opam/buildfiles/ppx_expect/evaluator:BUILD.bazel":
            "evaluator /Users/gar/.opam/4.10/lib/ppx_expect/evaluator",

            "@//.opam/buildfiles/ppx_expect/matcher:BUILD.bazel":
            "matcher /Users/gar/.opam/4.10/lib/ppx_expect/matcher",

            "@//.opam/buildfiles/ppx_expect/payload:BUILD.bazel":
            "payload /Users/gar/.opam/4.10/lib/ppx_expect/payload",

        }
    )

    new_local_pkg_repository(
        name       = "mmap",
        build_file = "@//.opam/buildfiles/mmap:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/mmap",
    )

    new_local_pkg_repository(
        name       = "cohttp-lwt",
        build_file = "@//.opam/buildfiles/cohttp-lwt:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/cohttp-lwt",
    )

    new_local_pkg_repository(
        name       = "js_of_ocaml",
        build_file = "@//.opam/buildfiles/js_of_ocaml:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/js_of_ocaml",
        subpackages = {
            "@//.opam/buildfiles/js_of_ocaml/deriving:BUILD.bazel":
            "deriving /Users/gar/.opam/4.10/lib/js_of_ocaml/deriving",

        }
    )

    new_local_pkg_repository(
        name       = "dune",
        build_file = "@//.opam/buildfiles/dune:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/dune",
        subpackages = {
            "@//.opam/buildfiles/dune/configurator:BUILD.bazel":
            "configurator /Users/gar/.opam/4.10/lib/dune/configurator",

        }
    )

    new_local_pkg_repository(
        name       = "json-data-encoding-bson",
        build_file = "@//.opam/buildfiles/json-data-encoding-bson:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/json-data-encoding-bson",
    )

    new_local_pkg_repository(
        name       = "camlzip",
        build_file = "@//.opam/buildfiles/camlzip:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/camlzip",
    )

    new_local_pkg_repository(
        name       = "cohttp-lwt-unix",
        build_file = "@//.opam/buildfiles/cohttp-lwt-unix:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/cohttp-lwt-unix",
    )

    new_local_pkg_repository(
        name       = "ppx_cold",
        build_file = "@//.opam/buildfiles/ppx_cold:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ppx_cold",
    )

    new_local_pkg_repository(
        name       = "ipaddr",
        build_file = "@//.opam/buildfiles/ipaddr:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ipaddr",
        subpackages = {
            "@//.opam/buildfiles/ipaddr/top:BUILD.bazel":
            "top /Users/gar/.opam/4.10/lib/ipaddr/top",

            "@//.opam/buildfiles/ipaddr/unix:BUILD.bazel":
            "unix /Users/gar/.opam/4.10/lib/ipaddr/unix",

        }
    )

    new_local_pkg_repository(
        name       = "fmt",
        build_file = "@//.opam/buildfiles/fmt:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/fmt",
        subpackages = {
            "@//.opam/buildfiles/fmt/tty:BUILD.bazel":
            "tty /Users/gar/.opam/4.10/lib/fmt",

            "@//.opam/buildfiles/fmt/cli:BUILD.bazel":
            "cli /Users/gar/.opam/4.10/lib/fmt",

            "@//.opam/buildfiles/fmt/top:BUILD.bazel":
            "top /Users/gar/.opam/4.10/lib/fmt",

        }
    )

    new_local_pkg_repository(
        name       = "menhirLib",
        build_file = "@//.opam/buildfiles/menhirLib:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/menhirLib",
    )

    new_local_pkg_repository(
        name       = "splittable_random",
        build_file = "@//.opam/buildfiles/splittable_random:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/splittable_random",
    )

    new_local_pkg_repository(
        name       = "bigstring",
        build_file = "@//.opam/buildfiles/bigstring:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/bigstring",
    )

    new_local_pkg_repository(
        name       = "ocplib-ocamlres",
        build_file = "@//.opam/buildfiles/ocplib-ocamlres:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ocplib-ocamlres",
        subpackages = {
            "@//.opam/buildfiles/ocplib-ocamlres/runtime:BUILD.bazel":
            "runtime /Users/gar/.opam/4.10/lib/ocplib-ocamlres",

        }
    )

    new_local_pkg_repository(
        name       = "uecc",
        build_file = "@//.opam/buildfiles/uecc:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/uecc",
    )

    new_local_pkg_repository(
        name       = "base_bigstring",
        build_file = "@//.opam/buildfiles/base_bigstring:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/base_bigstring",
    )

    new_local_pkg_repository(
        name       = "cudf",
        build_file = "@//.opam/buildfiles/cudf:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/cudf",
    )

    new_local_pkg_repository(
        name       = "seq",
        build_file = "@//.opam/buildfiles/seq:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/seq",
    )

    new_local_pkg_repository(
        name       = "ppx_base",
        build_file = "@//.opam/buildfiles/ppx_base:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ppx_base",
    )

    new_local_pkg_repository(
        name       = "resto-cohttp-server",
        build_file = "@//.opam/buildfiles/resto-cohttp-server:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/resto-cohttp-server",
    )

    new_local_pkg_repository(
        name       = "integers",
        build_file = "@//.opam/buildfiles/integers:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/integers",
        subpackages = {
            "@//.opam/buildfiles/integers/top:BUILD.bazel":
            "top /Users/gar/.opam/4.10/lib/integers/top",

        }
    )

    new_local_pkg_repository(
        name       = "menhirSdk",
        build_file = "@//.opam/buildfiles/menhirSdk:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/menhirSdk",
    )

    new_local_pkg_repository(
        name       = "domain-name",
        build_file = "@//.opam/buildfiles/domain-name:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/domain-name",
    )

    new_local_pkg_repository(
        name       = "ppx_deriving",
        build_file = "@//.opam/buildfiles/ppx_deriving:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ppx_deriving",
        subpackages = {
            "@//.opam/buildfiles/ppx_deriving/api:BUILD.bazel":
            "api /Users/gar/.opam/4.10/lib/ppx_deriving/api",

            "@//.opam/buildfiles/ppx_deriving/create:BUILD.bazel":
            "create /Users/gar/.opam/4.10/lib/ppx_deriving/create",

            "@//.opam/buildfiles/ppx_deriving/enum:BUILD.bazel":
            "enum /Users/gar/.opam/4.10/lib/ppx_deriving/enum",

            "@//.opam/buildfiles/ppx_deriving/eq:BUILD.bazel":
            "eq /Users/gar/.opam/4.10/lib/ppx_deriving/eq",

            "@//.opam/buildfiles/ppx_deriving/fold:BUILD.bazel":
            "fold /Users/gar/.opam/4.10/lib/ppx_deriving/fold",

            "@//.opam/buildfiles/ppx_deriving/iter:BUILD.bazel":
            "iter /Users/gar/.opam/4.10/lib/ppx_deriving/iter",

            "@//.opam/buildfiles/ppx_deriving/make:BUILD.bazel":
            "make /Users/gar/.opam/4.10/lib/ppx_deriving/make",

            "@//.opam/buildfiles/ppx_deriving/map:BUILD.bazel":
            "map /Users/gar/.opam/4.10/lib/ppx_deriving/map",

            "@//.opam/buildfiles/ppx_deriving/ord:BUILD.bazel":
            "ord /Users/gar/.opam/4.10/lib/ppx_deriving/ord",

            "@//.opam/buildfiles/ppx_deriving/runtime:BUILD.bazel":
            "runtime /Users/gar/.opam/4.10/lib/ppx_deriving/runtime",

            "@//.opam/buildfiles/ppx_deriving/show:BUILD.bazel":
            "show /Users/gar/.opam/4.10/lib/ppx_deriving/show",

            "@//.opam/buildfiles/ppx_deriving/std:BUILD.bazel":
            "std /Users/gar/.opam/4.10/lib/ppx_deriving/std",

        }
    )

    new_local_pkg_repository(
        name       = "cpuid",
        build_file = "@//.opam/buildfiles/cpuid:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/cpuid",
    )

    new_local_pkg_repository(
        name       = "ppx_bin_prot",
        build_file = "@//.opam/buildfiles/ppx_bin_prot:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ppx_bin_prot",
        subpackages = {
            "@//.opam/buildfiles/ppx_bin_prot/shape-expander:BUILD.bazel":
            "shape-expander /Users/gar/.opam/4.10/lib/ppx_bin_prot/shape-expander",

        }
    )

    new_local_pkg_repository(
        name       = "ppx_repr",
        build_file = "@//.opam/buildfiles/ppx_repr:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ppx_repr",
        subpackages = {
            "@//.opam/buildfiles/ppx_repr/lib:BUILD.bazel":
            "lib /Users/gar/.opam/4.10/lib/ppx_repr/lib",

        }
    )

    new_local_pkg_repository(
        name       = "alcotest-lwt",
        build_file = "@//.opam/buildfiles/alcotest-lwt:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/alcotest-lwt",
    )

    new_local_pkg_repository(
        name       = "lwt-canceler",
        build_file = "@//.opam/buildfiles/lwt-canceler:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/lwt-canceler",
    )

    new_local_pkg_repository(
        name       = "rresult",
        build_file = "@//.opam/buildfiles/rresult:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/rresult",
        subpackages = {
            "@//.opam/buildfiles/rresult/top:BUILD.bazel":
            "top /Users/gar/.opam/4.10/lib/rresult",

        }
    )

    new_local_pkg_repository(
        name       = "base64",
        build_file = "@//.opam/buildfiles/base64:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/base64",
        subpackages = {
            "@//.opam/buildfiles/base64/rfc2045:BUILD.bazel":
            "rfc2045 /Users/gar/.opam/4.10/lib/base64/rfc2045",

        }
    )

    new_local_pkg_repository(
        name       = "ppx_optional",
        build_file = "@//.opam/buildfiles/ppx_optional:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ppx_optional",
    )

    new_local_pkg_repository(
        name       = "ocamlbuild",
        build_file = "@//.opam/buildfiles/ocamlbuild:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ocamlbuild",
    )

    new_local_pkg_repository(
        name       = "findlib",
        build_file = "@//.opam/buildfiles/findlib:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/findlib",
        subpackages = {
            "@//.opam/buildfiles/findlib/internal:BUILD.bazel":
            "internal /Users/gar/.opam/4.10/lib/findlib",

            "@//.opam/buildfiles/findlib/dynload:BUILD.bazel":
            "dynload /Users/gar/.opam/4.10/lib/findlib",

            "@//.opam/buildfiles/findlib/top:BUILD.bazel":
            "top /Users/gar/.opam/4.10/lib/findlib",

        }
    )

    new_local_pkg_repository(
        name       = "resto-directory",
        build_file = "@//.opam/buildfiles/resto-directory:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/resto-directory",
    )

    new_local_pkg_repository(
        name       = "biniou",
        build_file = "@//.opam/buildfiles/biniou:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/biniou",
    )

    new_local_pkg_repository(
        name       = "decompress",
        build_file = "@//.opam/buildfiles/decompress:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/decompress",
        subpackages = {
            "@//.opam/buildfiles/decompress/de:BUILD.bazel":
            "de /Users/gar/.opam/4.10/lib/decompress/de",

            "@//.opam/buildfiles/decompress/gz:BUILD.bazel":
            "gz /Users/gar/.opam/4.10/lib/decompress/gz",

            "@//.opam/buildfiles/decompress/lz:BUILD.bazel":
            "lz /Users/gar/.opam/4.10/lib/decompress/lz",

            "@//.opam/buildfiles/decompress/lzo:BUILD.bazel":
            "lzo /Users/gar/.opam/4.10/lib/decompress/lzo",

            "@//.opam/buildfiles/decompress/zl:BUILD.bazel":
            "zl /Users/gar/.opam/4.10/lib/decompress/zl",

        }
    )

    new_local_pkg_repository(
        name       = "terminal",
        build_file = "@//.opam/buildfiles/terminal:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/terminal",
    )

    new_local_pkg_repository(
        name       = "num",
        build_file = "@//.opam/buildfiles/num:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/num",
        subpackages = {
            "@//.opam/buildfiles/num/core:BUILD.bazel":
            "core /Users/gar/.opam/4.10/lib/num/^",

        }
    )

    new_local_pkg_repository(
        name       = "hacl",
        build_file = "@//.opam/buildfiles/hacl:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/hacl",
    )

    new_local_pkg_repository(
        name       = "ppx_custom_printf",
        build_file = "@//.opam/buildfiles/ppx_custom_printf:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ppx_custom_printf",
    )

    new_local_pkg_repository(
        name       = "jane-street-headers",
        build_file = "@//.opam/buildfiles/jane-street-headers:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/jane-street-headers",
    )

    new_local_pkg_repository(
        name       = "pbkdf",
        build_file = "@//.opam/buildfiles/pbkdf:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/pbkdf",
    )

    new_local_pkg_repository(
        name       = "ppxlib",
        build_file = "@//.opam/buildfiles/ppxlib:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ppxlib",
        subpackages = {
            "@//.opam/buildfiles/ppxlib/ast:BUILD.bazel":
            "ast /Users/gar/.opam/4.10/lib/ppxlib/ast",

            "@//.opam/buildfiles/ppxlib/metaquot:BUILD.bazel":
            "metaquot /Users/gar/.opam/4.10/lib/ppxlib/metaquot",

            "@//.opam/buildfiles/ppxlib/metaquot_lifters:BUILD.bazel":
            "metaquot_lifters /Users/gar/.opam/4.10/lib/ppxlib/metaquot_lifters",

            "@//.opam/buildfiles/ppxlib/print_diff:BUILD.bazel":
            "print_diff /Users/gar/.opam/4.10/lib/ppxlib/print_diff",

            "@//.opam/buildfiles/ppxlib/runner:BUILD.bazel":
            "runner /Users/gar/.opam/4.10/lib/ppxlib/runner",

            "@//.opam/buildfiles/ppxlib/runner_as_ppx:BUILD.bazel":
            "runner_as_ppx /Users/gar/.opam/4.10/lib/ppxlib/runner_as_ppx",

            "@//.opam/buildfiles/ppxlib/stdppx:BUILD.bazel":
            "stdppx /Users/gar/.opam/4.10/lib/ppxlib/stdppx",

            "@//.opam/buildfiles/ppxlib/traverse:BUILD.bazel":
            "traverse /Users/gar/.opam/4.10/lib/ppxlib/traverse",

            "@//.opam/buildfiles/ppxlib/traverse_builtins:BUILD.bazel":
            "traverse_builtins /Users/gar/.opam/4.10/lib/ppxlib/traverse_builtins",

        }
    )

    new_local_pkg_repository(
        name       = "base_quickcheck",
        build_file = "@//.opam/buildfiles/base_quickcheck:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/base_quickcheck",
        subpackages = {
            "@//.opam/buildfiles/base_quickcheck/ppx_quickcheck:BUILD.bazel":
            "ppx_quickcheck /Users/gar/.opam/4.10/lib/base_quickcheck/ppx_quickcheck",

            "@//.opam/buildfiles/base_quickcheck/ppx_quickcheck/expander:BUILD.bazel":
            "ppx_quickcheck/expander /Users/gar/.opam/4.10/lib/base_quickcheck/ppx_quickcheck/expander",

        }
    )

    new_local_pkg_repository(
        name       = "oUnit",
        build_file = "@//.opam/buildfiles/oUnit:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/oUnit",
        subpackages = {
            "@//.opam/buildfiles/oUnit/threads:BUILD.bazel":
            "threads /Users/gar/.opam/4.10/lib/oUnit",

            "@//.opam/buildfiles/oUnit/advanced:BUILD.bazel":
            "advanced /Users/gar/.opam/4.10/lib/oUnit",

        }
    )

    new_local_pkg_repository(
        name       = "secp256k1-internal",
        build_file = "@//.opam/buildfiles/secp256k1-internal:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/secp256k1-internal",
    )

    new_local_pkg_repository(
        name       = "gmap",
        build_file = "@//.opam/buildfiles/gmap:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/gmap",
    )

    new_local_pkg_repository(
        name       = "resto",
        build_file = "@//.opam/buildfiles/resto:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/resto",
    )

    new_local_pkg_repository(
        name       = "ppx_tools_versioned",
        build_file = "@//.opam/buildfiles/ppx_tools_versioned:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ppx_tools_versioned",
        subpackages = {
            "@//.opam/buildfiles/ppx_tools_versioned/metaquot_402:BUILD.bazel":
            "metaquot_402 /Users/gar/.opam/4.10/lib/ppx_tools_versioned/metaquot_402",

            "@//.opam/buildfiles/ppx_tools_versioned/metaquot_403:BUILD.bazel":
            "metaquot_403 /Users/gar/.opam/4.10/lib/ppx_tools_versioned/metaquot_403",

            "@//.opam/buildfiles/ppx_tools_versioned/metaquot_404:BUILD.bazel":
            "metaquot_404 /Users/gar/.opam/4.10/lib/ppx_tools_versioned/metaquot_404",

            "@//.opam/buildfiles/ppx_tools_versioned/metaquot_405:BUILD.bazel":
            "metaquot_405 /Users/gar/.opam/4.10/lib/ppx_tools_versioned/metaquot_405",

            "@//.opam/buildfiles/ppx_tools_versioned/metaquot_406:BUILD.bazel":
            "metaquot_406 /Users/gar/.opam/4.10/lib/ppx_tools_versioned/metaquot_406",

            "@//.opam/buildfiles/ppx_tools_versioned/metaquot_407:BUILD.bazel":
            "metaquot_407 /Users/gar/.opam/4.10/lib/ppx_tools_versioned/metaquot_407",

            "@//.opam/buildfiles/ppx_tools_versioned/metaquot_408:BUILD.bazel":
            "metaquot_408 /Users/gar/.opam/4.10/lib/ppx_tools_versioned/metaquot_408",

            "@//.opam/buildfiles/ppx_tools_versioned/metaquot_409:BUILD.bazel":
            "metaquot_409 /Users/gar/.opam/4.10/lib/ppx_tools_versioned/metaquot_409",

            "@//.opam/buildfiles/ppx_tools_versioned/metaquot_410:BUILD.bazel":
            "metaquot_410 /Users/gar/.opam/4.10/lib/ppx_tools_versioned/metaquot_410",

            "@//.opam/buildfiles/ppx_tools_versioned/metaquot_411:BUILD.bazel":
            "metaquot_411 /Users/gar/.opam/4.10/lib/ppx_tools_versioned/metaquot_411",

        }
    )

    new_local_pkg_repository(
        name       = "spdx_licenses",
        build_file = "@//.opam/buildfiles/spdx_licenses:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/spdx_licenses",
    )

    new_local_pkg_repository(
        name       = "ppx_jane",
        build_file = "@//.opam/buildfiles/ppx_jane:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ppx_jane",
        subpackages = {
            "@//.opam/buildfiles/ppx_jane/kernel:BUILD.bazel":
            "kernel /Users/gar/.opam/4.10/lib/ppx_jane/kernel",

        }
    )

    new_local_pkg_repository(
        name       = "astring",
        build_file = "@//.opam/buildfiles/astring:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/astring",
        subpackages = {
            "@//.opam/buildfiles/astring/top:BUILD.bazel":
            "top /Users/gar/.opam/4.10/lib/astring",

        }
    )

    new_local_pkg_repository(
        name       = "lwt-exit",
        build_file = "@//.opam/buildfiles/lwt-exit:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/lwt-exit",
    )

    new_local_pkg_repository(
        name       = "metrics-influx",
        build_file = "@//.opam/buildfiles/metrics-influx:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/metrics-influx",
    )

    new_local_pkg_repository(
        name       = "num-top",
        build_file = "@//.opam/buildfiles/num-top:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/num-top",
    )

    new_local_pkg_repository(
        name       = "resto-cohttp",
        build_file = "@//.opam/buildfiles/resto-cohttp:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/resto-cohttp",
    )

    new_local_pkg_repository(
        name       = "ringo-lwt",
        build_file = "@//.opam/buildfiles/ringo-lwt:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ringo-lwt",
    )

    new_local_pkg_repository(
        name       = "resto-acl",
        build_file = "@//.opam/buildfiles/resto-acl:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/resto-acl",
    )

    new_local_pkg_repository(
        name       = "ppx_compare",
        build_file = "@//.opam/buildfiles/ppx_compare:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ppx_compare",
        subpackages = {
            "@//.opam/buildfiles/ppx_compare/expander:BUILD.bazel":
            "expander /Users/gar/.opam/4.10/lib/ppx_compare/expander",

            "@//.opam/buildfiles/ppx_compare/runtime-lib:BUILD.bazel":
            "runtime-lib /Users/gar/.opam/4.10/lib/ppx_compare/runtime-lib",

        }
    )

    new_local_pkg_repository(
        name       = "bin_prot",
        build_file = "@//.opam/buildfiles/bin_prot:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/bin_prot",
        subpackages = {
            "@//.opam/buildfiles/bin_prot/shape:BUILD.bazel":
            "shape /Users/gar/.opam/4.10/lib/bin_prot/shape",

            "@//.opam/buildfiles/bin_prot/xen:BUILD.bazel":
            "xen /Users/gar/.opam/4.10/lib/bin_prot/xen",

        }
    )

    new_local_pkg_repository(
        name       = "typerep",
        build_file = "@//.opam/buildfiles/typerep:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/typerep",
    )

    new_local_pkg_repository(
        name       = "dose3",
        build_file = "@//.opam/buildfiles/dose3:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/dose3",
        subpackages = {
            "@//.opam/buildfiles/dose3/common:BUILD.bazel":
            "common /Users/gar/.opam/4.10/lib/dose3",

            "@//.opam/buildfiles/dose3/algo:BUILD.bazel":
            "algo /Users/gar/.opam/4.10/lib/dose3",

            "@//.opam/buildfiles/dose3/versioning:BUILD.bazel":
            "versioning /Users/gar/.opam/4.10/lib/dose3",

            "@//.opam/buildfiles/dose3/debian:BUILD.bazel":
            "debian /Users/gar/.opam/4.10/lib/dose3",

            "@//.opam/buildfiles/dose3/opam:BUILD.bazel":
            "opam /Users/gar/.opam/4.10/lib/dose3",

            "@//.opam/buildfiles/dose3/pef:BUILD.bazel":
            "pef /Users/gar/.opam/4.10/lib/dose3",

            "@//.opam/buildfiles/dose3/csw:BUILD.bazel":
            "csw /Users/gar/.opam/4.10/lib/dose3",

            "@//.opam/buildfiles/dose3/rpm:BUILD.bazel":
            "rpm /Users/gar/.opam/4.10/lib/dose3",

            "@//.opam/buildfiles/dose3/doseparse:BUILD.bazel":
            "doseparse /Users/gar/.opam/4.10/lib/dose3",

            "@//.opam/buildfiles/dose3/doseparseNoRpm:BUILD.bazel":
            "doseparseNoRpm /Users/gar/.opam/4.10/lib/dose3",

            "@//.opam/buildfiles/dose3/npm:BUILD.bazel":
            "npm /Users/gar/.opam/4.10/lib/dose3",

        }
    )

    new_local_pkg_repository(
        name       = "ppx_inline_test",
        build_file = "@//.opam/buildfiles/ppx_inline_test:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ppx_inline_test",
        subpackages = {
            "@//.opam/buildfiles/ppx_inline_test/config:BUILD.bazel":
            "config /Users/gar/.opam/4.10/lib/ppx_inline_test/config",

            "@//.opam/buildfiles/ppx_inline_test/drop:BUILD.bazel":
            "drop /Users/gar/.opam/4.10/lib/ppx_inline_test/drop",

            "@//.opam/buildfiles/ppx_inline_test/libname:BUILD.bazel":
            "libname /Users/gar/.opam/4.10/lib/ppx_inline_test/libname",

            "@//.opam/buildfiles/ppx_inline_test/runner:BUILD.bazel":
            "runner /Users/gar/.opam/4.10/lib/ppx_inline_test/runner",

            "@//.opam/buildfiles/ppx_inline_test/runner/lib:BUILD.bazel":
            "runner/lib /Users/gar/.opam/4.10/lib/ppx_inline_test/runner/lib",

            "@//.opam/buildfiles/ppx_inline_test/runtime-lib:BUILD.bazel":
            "runtime-lib /Users/gar/.opam/4.10/lib/ppx_inline_test/runtime-lib",

        }
    )

    new_local_pkg_repository(
        name       = "hkdf",
        build_file = "@//.opam/buildfiles/hkdf:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/hkdf",
    )

    new_local_pkg_repository(
        name       = "ppx_variants_conv",
        build_file = "@//.opam/buildfiles/ppx_variants_conv:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ppx_variants_conv",
    )

    new_local_pkg_repository(
        name       = "ppx_module_timer",
        build_file = "@//.opam/buildfiles/ppx_module_timer:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ppx_module_timer",
        subpackages = {
            "@//.opam/buildfiles/ppx_module_timer/runtime:BUILD.bazel":
            "runtime /Users/gar/.opam/4.10/lib/ppx_module_timer/runtime",

        }
    )

    new_local_pkg_repository(
        name       = "x509",
        build_file = "@//.opam/buildfiles/x509:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/x509",
    )

    new_local_pkg_repository(
        name       = "bigarray",
        build_file = "@//.opam/buildfiles/bigarray:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/bigarray",
    )

    new_local_pkg_repository(
        name       = "zip",
        build_file = "@//.opam/buildfiles/zip:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/zip",
    )

    new_local_pkg_repository(
        name       = "semaphore-compat",
        build_file = "@//.opam/buildfiles/semaphore-compat:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/semaphore-compat",
    )

    new_local_pkg_repository(
        name       = "bls12-381-gen",
        build_file = "@//.opam/buildfiles/bls12-381-gen:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/bls12-381-gen",
    )

    new_local_pkg_repository(
        name       = "stdlib-shims",
        build_file = "@//.opam/buildfiles/stdlib-shims:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/stdlib-shims",
    )

    new_local_pkg_repository(
        name       = "unix",
        build_file = "@//.opam/buildfiles/unix:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/unix",
    )

    new_local_pkg_repository(
        name       = "ppx_typerep_conv",
        build_file = "@//.opam/buildfiles/ppx_typerep_conv:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ppx_typerep_conv",
    )

    new_local_pkg_repository(
        name       = "lwt",
        build_file = "@//.opam/buildfiles/lwt:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/lwt",
        subpackages = {
            "@//.opam/buildfiles/lwt/unix:BUILD.bazel":
            "unix /Users/gar/.opam/4.10/lib/lwt/unix",

        }
    )

    new_local_pkg_repository(
        name       = "json-data-encoding",
        build_file = "@//.opam/buildfiles/json-data-encoding:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/json-data-encoding",
    )

    new_local_pkg_repository(
        name       = "stdio",
        build_file = "@//.opam/buildfiles/stdio:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/stdio",
    )

    new_local_pkg_repository(
        name       = "checkseum",
        build_file = "@//.opam/buildfiles/checkseum:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/checkseum",
        subpackages = {
            "@//.opam/buildfiles/checkseum/c:BUILD.bazel":
            "c /Users/gar/.opam/4.10/lib/checkseum/c",

            "@//.opam/buildfiles/checkseum/ocaml:BUILD.bazel":
            "ocaml /Users/gar/.opam/4.10/lib/checkseum/ocaml",

        }
    )

    new_local_pkg_repository(
        name       = "metrics-rusage",
        build_file = "@//.opam/buildfiles/metrics-rusage:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/metrics-rusage",
    )

    new_local_pkg_repository(
        name       = "opam-file-format",
        build_file = "@//.opam/buildfiles/opam-file-format:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/opam-file-format",
    )

    new_local_pkg_repository(
        name       = "logs",
        build_file = "@//.opam/buildfiles/logs:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/logs",
        subpackages = {
            "@//.opam/buildfiles/logs/fmt:BUILD.bazel":
            "fmt /Users/gar/.opam/4.10/lib/logs",

            "@//.opam/buildfiles/logs/browser:BUILD.bazel":
            "browser /Users/gar/.opam/4.10/lib/logs",

            "@//.opam/buildfiles/logs/cli:BUILD.bazel":
            "cli /Users/gar/.opam/4.10/lib/logs",

            "@//.opam/buildfiles/logs/lwt:BUILD.bazel":
            "lwt /Users/gar/.opam/4.10/lib/logs",

            "@//.opam/buildfiles/logs/threaded:BUILD.bazel":
            "threaded /Users/gar/.opam/4.10/lib/logs",

            "@//.opam/buildfiles/logs/top:BUILD.bazel":
            "top /Users/gar/.opam/4.10/lib/logs",

        }
    )

    new_local_pkg_repository(
        name       = "tls",
        build_file = "@//.opam/buildfiles/tls:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/tls",
        subpackages = {
            "@//.opam/buildfiles/tls/lwt:BUILD.bazel":
            "lwt /Users/gar/.opam/4.10/lib/tls/lwt",

        }
    )

    new_local_pkg_repository(
        name       = "parsexp",
        build_file = "@//.opam/buildfiles/parsexp:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/parsexp",
    )

    new_local_pkg_repository(
        name       = "ppx_pipebang",
        build_file = "@//.opam/buildfiles/ppx_pipebang:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ppx_pipebang",
    )

    new_local_pkg_repository(
        name       = "ppx_hash",
        build_file = "@//.opam/buildfiles/ppx_hash:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ppx_hash",
        subpackages = {
            "@//.opam/buildfiles/ppx_hash/expander:BUILD.bazel":
            "expander /Users/gar/.opam/4.10/lib/ppx_hash/expander",

            "@//.opam/buildfiles/ppx_hash/runtime-lib:BUILD.bazel":
            "runtime-lib /Users/gar/.opam/4.10/lib/ppx_hash/runtime-lib",

        }
    )

    new_local_pkg_repository(
        name       = "ppx_derivers",
        build_file = "@//.opam/buildfiles/ppx_derivers:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ppx_derivers",
    )

    new_local_pkg_repository(
        name       = "optint",
        build_file = "@//.opam/buildfiles/optint:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/optint",
    )

    new_local_pkg_repository(
        name       = "irmin-layers",
        build_file = "@//.opam/buildfiles/irmin-layers:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/irmin-layers",
    )

    new_local_pkg_repository(
        name       = "ff-sig",
        build_file = "@//.opam/buildfiles/ff-sig:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ff-sig",
    )

    new_local_pkg_repository(
        name       = "mirage-crypto-ec",
        build_file = "@//.opam/buildfiles/mirage-crypto-ec:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/mirage-crypto-ec",
    )

    new_local_pkg_repository(
        name       = "ocaml-migrate-parsetree",
        build_file = "@//.opam/buildfiles/ocaml-migrate-parsetree:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ocaml-migrate-parsetree",
        subpackages = {
            "@//.opam/buildfiles/ocaml-migrate-parsetree/driver-main:BUILD.bazel":
            "driver-main /Users/gar/.opam/4.10/lib/ocaml-migrate-parsetree/driver-main",

        }
    )

    new_local_pkg_repository(
        name       = "easy-format",
        build_file = "@//.opam/buildfiles/easy-format:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/easy-format",
    )

    new_local_pkg_repository(
        name       = "cstruct-lwt",
        build_file = "@//.opam/buildfiles/cstruct-lwt:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/cstruct-lwt",
    )

    new_local_pkg_repository(
        name       = "zarith",
        build_file = "@//.opam/buildfiles/zarith:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/zarith",
        subpackages = {
            "@//.opam/buildfiles/zarith/top:BUILD.bazel":
            "top /Users/gar/.opam/4.10/lib/zarith",

        }
    )

    new_local_pkg_repository(
        name       = "lwt-watcher",
        build_file = "@//.opam/buildfiles/lwt-watcher:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/lwt-watcher",
    )

    new_local_pkg_repository(
        name       = "bls12-381-unix",
        build_file = "@//.opam/buildfiles/bls12-381-unix:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/bls12-381-unix",
    )

    new_local_pkg_repository(
        name       = "metrics-lwt",
        build_file = "@//.opam/buildfiles/metrics-lwt:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/metrics-lwt",
    )

    new_local_pkg_repository(
        name       = "jsonm",
        build_file = "@//.opam/buildfiles/jsonm:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/jsonm",
    )

    new_local_pkg_repository(
        name       = "hacl-star",
        build_file = "@//.opam/buildfiles/hacl-star:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/hacl-star",
    )

    new_local_pkg_repository(
        name       = "ocaml-compiler-libs",
        build_file = "@//.opam/buildfiles/ocaml-compiler-libs:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ocaml-compiler-libs",
        subpackages = {
            "@//.opam/buildfiles/ocaml-compiler-libs/bytecomp:BUILD.bazel":
            "bytecomp /Users/gar/.opam/4.10/lib/ocaml-compiler-libs/bytecomp",

            "@//.opam/buildfiles/ocaml-compiler-libs/common:BUILD.bazel":
            "common /Users/gar/.opam/4.10/lib/ocaml-compiler-libs/common",

            "@//.opam/buildfiles/ocaml-compiler-libs/optcomp:BUILD.bazel":
            "optcomp /Users/gar/.opam/4.10/lib/ocaml-compiler-libs/optcomp",

            "@//.opam/buildfiles/ocaml-compiler-libs/shadow:BUILD.bazel":
            "shadow /Users/gar/.opam/4.10/lib/ocaml-compiler-libs/shadow",

            "@//.opam/buildfiles/ocaml-compiler-libs/toplevel:BUILD.bazel":
            "toplevel /Users/gar/.opam/4.10/lib/ocaml-compiler-libs/toplevel",

        }
    )

    new_local_pkg_repository(
        name       = "b0",
        build_file = "@//.opam/buildfiles/b0:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/b0",
        subpackages = {
            "@//.opam/buildfiles/b0/b00:BUILD.bazel":
            "b00 /Users/gar/.opam/4.10/lib/b0/b00",

            "@//.opam/buildfiles/b0/b00/std:BUILD.bazel":
            "b00/std /Users/gar/.opam/4.10/lib/b0/b00/std",

            "@//.opam/buildfiles/b0/b00/kit:BUILD.bazel":
            "b00/kit /Users/gar/.opam/4.10/lib/b0/b00/kit",

            "@//.opam/buildfiles/b0/kit:BUILD.bazel":
            "kit /Users/gar/.opam/4.10/lib/b0/kit",

            "@//.opam/buildfiles/b0/b0:BUILD.bazel":
            "b0 /Users/gar/.opam/4.10/lib/b0/b0",

        }
    )

    new_local_pkg_repository(
        name       = "tar-unix",
        build_file = "@//.opam/buildfiles/tar-unix:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/tar-unix",
    )

    new_local_pkg_repository(
        name       = "index",
        build_file = "@//.opam/buildfiles/index:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/index",
        subpackages = {
            "@//.opam/buildfiles/index/unix:BUILD.bazel":
            "unix /Users/gar/.opam/4.10/lib/index/unix",

        }
    )

    new_local_pkg_repository(
        name       = "stdlib",
        build_file = "@//.opam/buildfiles/stdlib:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/stdlib",
    )

    new_local_pkg_repository(
        name       = "ppx_assert",
        build_file = "@//.opam/buildfiles/ppx_assert:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ppx_assert",
        subpackages = {
            "@//.opam/buildfiles/ppx_assert/runtime-lib:BUILD.bazel":
            "runtime-lib /Users/gar/.opam/4.10/lib/ppx_assert/runtime-lib",

        }
    )

    new_local_pkg_repository(
        name       = "alcotest",
        build_file = "@//.opam/buildfiles/alcotest:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/alcotest",
    )

    new_local_pkg_repository(
        name       = "ppx_sexp_conv",
        build_file = "@//.opam/buildfiles/ppx_sexp_conv:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ppx_sexp_conv",
        subpackages = {
            "@//.opam/buildfiles/ppx_sexp_conv/expander:BUILD.bazel":
            "expander /Users/gar/.opam/4.10/lib/ppx_sexp_conv/expander",

            "@//.opam/buildfiles/ppx_sexp_conv/runtime-lib:BUILD.bazel":
            "runtime-lib /Users/gar/.opam/4.10/lib/ppx_sexp_conv/runtime-lib",

        }
    )

    new_local_pkg_repository(
        name       = "uchar",
        build_file = "@//.opam/buildfiles/uchar:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/uchar",
    )

    new_local_pkg_repository(
        name       = "bos",
        build_file = "@//.opam/buildfiles/bos:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/bos",
        subpackages = {
            "@//.opam/buildfiles/bos/top:BUILD.bazel":
            "top /Users/gar/.opam/4.10/lib/bos",

            "@//.opam/buildfiles/bos/setup:BUILD.bazel":
            "setup /Users/gar/.opam/4.10/lib/bos",

        }
    )

    new_local_pkg_repository(
        name       = "tezos-lwt-result-stdlib",
        build_file = "@//.opam/buildfiles/tezos-lwt-result-stdlib:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/tezos-lwt-result-stdlib",
        subpackages = {
            "@//.opam/buildfiles/tezos-lwt-result-stdlib/bare:BUILD.bazel":
            "bare /Users/gar/.opam/4.10/lib/tezos-lwt-result-stdlib/bare",

            "@//.opam/buildfiles/tezos-lwt-result-stdlib/bare/functor-outputs:BUILD.bazel":
            "bare/functor-outputs /Users/gar/.opam/4.10/lib/tezos-lwt-result-stdlib/bare/functor-outputs",

            "@//.opam/buildfiles/tezos-lwt-result-stdlib/bare/sigs:BUILD.bazel":
            "bare/sigs /Users/gar/.opam/4.10/lib/tezos-lwt-result-stdlib/bare/sigs",

            "@//.opam/buildfiles/tezos-lwt-result-stdlib/bare/structs:BUILD.bazel":
            "bare/structs /Users/gar/.opam/4.10/lib/tezos-lwt-result-stdlib/bare/structs",

            "@//.opam/buildfiles/tezos-lwt-result-stdlib/examples:BUILD.bazel":
            "examples /Users/gar/.opam/4.10/lib/tezos-lwt-result-stdlib/examples",

            "@//.opam/buildfiles/tezos-lwt-result-stdlib/examples/traces:BUILD.bazel":
            "examples/traces /Users/gar/.opam/4.10/lib/tezos-lwt-result-stdlib/examples/traces",

            "@//.opam/buildfiles/tezos-lwt-result-stdlib/traced:BUILD.bazel":
            "traced /Users/gar/.opam/4.10/lib/tezos-lwt-result-stdlib/traced",

            "@//.opam/buildfiles/tezos-lwt-result-stdlib/traced/functor-outputs:BUILD.bazel":
            "traced/functor-outputs /Users/gar/.opam/4.10/lib/tezos-lwt-result-stdlib/traced/functor-outputs",

            "@//.opam/buildfiles/tezos-lwt-result-stdlib/traced/sigs:BUILD.bazel":
            "traced/sigs /Users/gar/.opam/4.10/lib/tezos-lwt-result-stdlib/traced/sigs",

            "@//.opam/buildfiles/tezos-lwt-result-stdlib/traced/structs:BUILD.bazel":
            "traced/structs /Users/gar/.opam/4.10/lib/tezos-lwt-result-stdlib/traced/structs",

        }
    )

    new_local_pkg_repository(
        name       = "sexplib0",
        build_file = "@//.opam/buildfiles/sexplib0:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/sexplib0",
    )

    new_local_pkg_repository(
        name       = "ppx_tools",
        build_file = "@//.opam/buildfiles/ppx_tools:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ppx_tools",
        subpackages = {
            "@//.opam/buildfiles/ppx_tools/ast_lifter:BUILD.bazel":
            "ast_lifter /Users/gar/.opam/4.10/lib/ppx_tools/ast_lifter",

            "@//.opam/buildfiles/ppx_tools/metaquot:BUILD.bazel":
            "metaquot /Users/gar/.opam/4.10/lib/ppx_tools/metaquot",

        }
    )

    new_local_pkg_repository(
        name       = "octavius",
        build_file = "@//.opam/buildfiles/octavius:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/octavius",
    )

    new_local_pkg_repository(
        name       = "tyxml",
        build_file = "@//.opam/buildfiles/tyxml:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/tyxml",
        subpackages = {
            "@//.opam/buildfiles/tyxml/functor:BUILD.bazel":
            "functor /Users/gar/.opam/4.10/lib/tyxml/functor",

        }
    )

    new_local_pkg_repository(
        name       = "angstrom",
        build_file = "@//.opam/buildfiles/angstrom:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/angstrom",
        subpackages = {
            "@//.opam/buildfiles/angstrom/unix:BUILD.bazel":
            "unix /Users/gar/.opam/4.10/lib/angstrom",

            "@//.opam/buildfiles/angstrom/lwt-unix:BUILD.bazel":
            "lwt-unix /Users/gar/.opam/4.10/lib/angstrom",

            "@//.opam/buildfiles/angstrom/async:BUILD.bazel":
            "async /Users/gar/.opam/4.10/lib/angstrom",

        }
    )

    new_local_pkg_repository(
        name       = "ppx_stable",
        build_file = "@//.opam/buildfiles/ppx_stable:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ppx_stable",
    )

    new_local_pkg_repository(
        name       = "odoc",
        build_file = "@//.opam/buildfiles/odoc:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/odoc",
        subpackages = {
            "@//.opam/buildfiles/odoc/compat:BUILD.bazel":
            "compat /Users/gar/.opam/4.10/lib/odoc/compat",

            "@//.opam/buildfiles/odoc/html:BUILD.bazel":
            "html /Users/gar/.opam/4.10/lib/odoc/html",

            "@//.opam/buildfiles/odoc/loader:BUILD.bazel":
            "loader /Users/gar/.opam/4.10/lib/odoc/loader",

            "@//.opam/buildfiles/odoc/model:BUILD.bazel":
            "model /Users/gar/.opam/4.10/lib/odoc/model",

            "@//.opam/buildfiles/odoc/odoc:BUILD.bazel":
            "odoc /Users/gar/.opam/4.10/lib/odoc/odoc",

            "@//.opam/buildfiles/odoc/parser:BUILD.bazel":
            "parser /Users/gar/.opam/4.10/lib/odoc/parser",

            "@//.opam/buildfiles/odoc/xref:BUILD.bazel":
            "xref /Users/gar/.opam/4.10/lib/odoc/xref",

        }
    )

    new_local_pkg_repository(
        name       = "bls12-381",
        build_file = "@//.opam/buildfiles/bls12-381:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/bls12-381",
    )

    new_local_pkg_repository(
        name       = "macaddr",
        build_file = "@//.opam/buildfiles/macaddr:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/macaddr",
        subpackages = {
            "@//.opam/buildfiles/macaddr/top:BUILD.bazel":
            "top /Users/gar/.opam/4.10/lib/macaddr/top",

        }
    )

    new_local_pkg_repository(
        name       = "ringo",
        build_file = "@//.opam/buildfiles/ringo:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ringo",
    )

    new_local_pkg_repository(
        name       = "crowbar",
        build_file = "@//.opam/buildfiles/crowbar:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/crowbar",
    )

    new_local_pkg_repository(
        name       = "resto-cohttp-self-serving-client",
        build_file = "@//.opam/buildfiles/resto-cohttp-self-serving-client:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/resto-cohttp-self-serving-client",
    )

    new_local_pkg_repository(
        name       = "ocamlgraph",
        build_file = "@//.opam/buildfiles/ocamlgraph:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ocamlgraph",
    )

    new_local_pkg_repository(
        name       = "ppx_bench",
        build_file = "@//.opam/buildfiles/ppx_bench:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ppx_bench",
        subpackages = {
            "@//.opam/buildfiles/ppx_bench/runtime-lib:BUILD.bazel":
            "runtime-lib /Users/gar/.opam/4.10/lib/ppx_bench/runtime-lib",

        }
    )

    new_local_pkg_repository(
        name       = "uutf",
        build_file = "@//.opam/buildfiles/uutf:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/uutf",
    )

    new_local_pkg_repository(
        name       = "js_of_ocaml-compiler",
        build_file = "@//.opam/buildfiles/js_of_ocaml-compiler:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/js_of_ocaml-compiler",
        subpackages = {
            "@//.opam/buildfiles/js_of_ocaml-compiler/findlib-support:BUILD.bazel":
            "findlib-support /Users/gar/.opam/4.10/lib/js_of_ocaml-compiler/findlib-support",

            "@//.opam/buildfiles/js_of_ocaml-compiler/runtime:BUILD.bazel":
            "runtime /Users/gar/.opam/4.10/lib/js_of_ocaml-compiler/runtime",

        }
    )

    new_local_pkg_repository(
        name       = "ff",
        build_file = "@//.opam/buildfiles/ff:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ff",
    )

    new_local_pkg_repository(
        name       = "resto-cohttp-client",
        build_file = "@//.opam/buildfiles/resto-cohttp-client:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/resto-cohttp-client",
    )

    new_local_pkg_repository(
        name       = "odig",
        build_file = "@//.opam/buildfiles/odig:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/odig",
        subpackages = {
            "@//.opam/buildfiles/odig/support:BUILD.bazel":
            "support /Users/gar/.opam/4.10/lib/odig",

        }
    )

    new_local_pkg_repository(
        name       = "ppx_enumerate",
        build_file = "@//.opam/buildfiles/ppx_enumerate:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ppx_enumerate",
        subpackages = {
            "@//.opam/buildfiles/ppx_enumerate/runtime-lib:BUILD.bazel":
            "runtime-lib /Users/gar/.opam/4.10/lib/ppx_enumerate/runtime-lib",

        }
    )

    new_local_pkg_repository(
        name       = "irmin-pack",
        build_file = "@//.opam/buildfiles/irmin-pack:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/irmin-pack",
        subpackages = {
            "@//.opam/buildfiles/irmin-pack/layered:BUILD.bazel":
            "layered /Users/gar/.opam/4.10/lib/irmin-pack/layered",

        }
    )

    new_local_pkg_repository(
        name       = "uri",
        build_file = "@//.opam/buildfiles/uri:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/uri",
        subpackages = {
            "@//.opam/buildfiles/uri/services:BUILD.bazel":
            "services /Users/gar/.opam/4.10/lib/uri/services",

            "@//.opam/buildfiles/uri/services_full:BUILD.bazel":
            "services_full /Users/gar/.opam/4.10/lib/uri/services_full",

        }
    )

    new_local_pkg_repository(
        name       = "conduit-lwt",
        build_file = "@//.opam/buildfiles/conduit-lwt:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/conduit-lwt",
    )

    new_local_pkg_repository(
        name       = "lwt_log",
        build_file = "@//.opam/buildfiles/lwt_log:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/lwt_log",
        subpackages = {
            "@//.opam/buildfiles/lwt_log/core:BUILD.bazel":
            "core /Users/gar/.opam/4.10/lib/lwt_log/core",

        }
    )

    new_local_pkg_repository(
        name       = "duration",
        build_file = "@//.opam/buildfiles/duration:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/duration",
    )

    new_local_pkg_repository(
        name       = "tar",
        build_file = "@//.opam/buildfiles/tar:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/tar",
    )

    new_local_pkg_repository(
        name       = "vector",
        build_file = "@//.opam/buildfiles/vector:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/vector",
    )

    new_local_pkg_repository(
        name       = "ocplib-endian",
        build_file = "@//.opam/buildfiles/ocplib-endian:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ocplib-endian",
        subpackages = {
            "@//.opam/buildfiles/ocplib-endian/bigstring:BUILD.bazel":
            "bigstring /Users/gar/.opam/4.10/lib/ocplib-endian/bigstring",

        }
    )

    new_local_pkg_repository(
        name       = "ppx_sexp_message",
        build_file = "@//.opam/buildfiles/ppx_sexp_message:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ppx_sexp_message",
        subpackages = {
            "@//.opam/buildfiles/ppx_sexp_message/expander:BUILD.bazel":
            "expander /Users/gar/.opam/4.10/lib/ppx_sexp_message/expander",

        }
    )

    new_local_pkg_repository(
        name       = "lwt-dllist",
        build_file = "@//.opam/buildfiles/lwt-dllist:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/lwt-dllist",
    )

    new_local_pkg_repository(
        name       = "ppx_cstruct",
        build_file = "@//.opam/buildfiles/ppx_cstruct:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ppx_cstruct",
    )

    new_local_pkg_repository(
        name       = "core_kernel",
        build_file = "@//.opam/buildfiles/core_kernel:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/core_kernel",
        subpackages = {
            "@//.opam/buildfiles/core_kernel/ansi_kernel:BUILD.bazel":
            "ansi_kernel /Users/gar/.opam/4.10/lib/core_kernel/ansi_kernel",

            "@//.opam/buildfiles/core_kernel/balanced_reducer:BUILD.bazel":
            "balanced_reducer /Users/gar/.opam/4.10/lib/core_kernel/balanced_reducer",

            "@//.opam/buildfiles/core_kernel/base_for_tests:BUILD.bazel":
            "base_for_tests /Users/gar/.opam/4.10/lib/core_kernel/base_for_tests",

            "@//.opam/buildfiles/core_kernel/binary_packing:BUILD.bazel":
            "binary_packing /Users/gar/.opam/4.10/lib/core_kernel/binary_packing",

            "@//.opam/buildfiles/core_kernel/bounded_int_table:BUILD.bazel":
            "bounded_int_table /Users/gar/.opam/4.10/lib/core_kernel/bounded_int_table",

            "@//.opam/buildfiles/core_kernel/bus:BUILD.bazel":
            "bus /Users/gar/.opam/4.10/lib/core_kernel/bus",

            "@//.opam/buildfiles/core_kernel/caml_unix:BUILD.bazel":
            "caml_unix /Users/gar/.opam/4.10/lib/core_kernel/caml_unix",

            "@//.opam/buildfiles/core_kernel/composition_infix:BUILD.bazel":
            "composition_infix /Users/gar/.opam/4.10/lib/core_kernel/composition_infix",

            "@//.opam/buildfiles/core_kernel/enum:BUILD.bazel":
            "enum /Users/gar/.opam/4.10/lib/core_kernel/enum",

            "@//.opam/buildfiles/core_kernel/fheap:BUILD.bazel":
            "fheap /Users/gar/.opam/4.10/lib/core_kernel/fheap",

            "@//.opam/buildfiles/core_kernel/flags:BUILD.bazel":
            "flags /Users/gar/.opam/4.10/lib/core_kernel/flags",

            "@//.opam/buildfiles/core_kernel/force_once:BUILD.bazel":
            "force_once /Users/gar/.opam/4.10/lib/core_kernel/force_once",

            "@//.opam/buildfiles/core_kernel/hash_heap:BUILD.bazel":
            "hash_heap /Users/gar/.opam/4.10/lib/core_kernel/hash_heap",

            "@//.opam/buildfiles/core_kernel/int_set:BUILD.bazel":
            "int_set /Users/gar/.opam/4.10/lib/core_kernel/int_set",

            "@//.opam/buildfiles/core_kernel/iobuf:BUILD.bazel":
            "iobuf /Users/gar/.opam/4.10/lib/core_kernel/iobuf",

            "@//.opam/buildfiles/core_kernel/limiter:BUILD.bazel":
            "limiter /Users/gar/.opam/4.10/lib/core_kernel/limiter",

            "@//.opam/buildfiles/core_kernel/linked_stack:BUILD.bazel":
            "linked_stack /Users/gar/.opam/4.10/lib/core_kernel/linked_stack",

            "@//.opam/buildfiles/core_kernel/moption:BUILD.bazel":
            "moption /Users/gar/.opam/4.10/lib/core_kernel/moption",

            "@//.opam/buildfiles/core_kernel/pairing_heap:BUILD.bazel":
            "pairing_heap /Users/gar/.opam/4.10/lib/core_kernel/pairing_heap",

            "@//.opam/buildfiles/core_kernel/pooled_hashtbl:BUILD.bazel":
            "pooled_hashtbl /Users/gar/.opam/4.10/lib/core_kernel/pooled_hashtbl",

            "@//.opam/buildfiles/core_kernel/rope:BUILD.bazel":
            "rope /Users/gar/.opam/4.10/lib/core_kernel/rope",

            "@//.opam/buildfiles/core_kernel/sexp_hidden_in_test:BUILD.bazel":
            "sexp_hidden_in_test /Users/gar/.opam/4.10/lib/core_kernel/sexp_hidden_in_test",

            "@//.opam/buildfiles/core_kernel/thread_pool_cpu_affinity:BUILD.bazel":
            "thread_pool_cpu_affinity /Users/gar/.opam/4.10/lib/core_kernel/thread_pool_cpu_affinity",

            "@//.opam/buildfiles/core_kernel/thread_safe_queue:BUILD.bazel":
            "thread_safe_queue /Users/gar/.opam/4.10/lib/core_kernel/thread_safe_queue",

            "@//.opam/buildfiles/core_kernel/timing_wheel:BUILD.bazel":
            "timing_wheel /Users/gar/.opam/4.10/lib/core_kernel/timing_wheel",

            "@//.opam/buildfiles/core_kernel/total_map:BUILD.bazel":
            "total_map /Users/gar/.opam/4.10/lib/core_kernel/total_map",

            "@//.opam/buildfiles/core_kernel/tuple_pool:BUILD.bazel":
            "tuple_pool /Users/gar/.opam/4.10/lib/core_kernel/tuple_pool",

            "@//.opam/buildfiles/core_kernel/univ:BUILD.bazel":
            "univ /Users/gar/.opam/4.10/lib/core_kernel/univ",

            "@//.opam/buildfiles/core_kernel/unpack_buffer:BUILD.bazel":
            "unpack_buffer /Users/gar/.opam/4.10/lib/core_kernel/unpack_buffer",

            "@//.opam/buildfiles/core_kernel/uopt:BUILD.bazel":
            "uopt /Users/gar/.opam/4.10/lib/core_kernel/uopt",

            "@//.opam/buildfiles/core_kernel/uuid:BUILD.bazel":
            "uuid /Users/gar/.opam/4.10/lib/core_kernel/uuid",

            "@//.opam/buildfiles/core_kernel/version_util:BUILD.bazel":
            "version_util /Users/gar/.opam/4.10/lib/core_kernel/version_util",

            "@//.opam/buildfiles/core_kernel/weak_array:BUILD.bazel":
            "weak_array /Users/gar/.opam/4.10/lib/core_kernel/weak_array",

            "@//.opam/buildfiles/core_kernel/weak_hashtbl:BUILD.bazel":
            "weak_hashtbl /Users/gar/.opam/4.10/lib/core_kernel/weak_hashtbl",

            "@//.opam/buildfiles/core_kernel/weak_pointer:BUILD.bazel":
            "weak_pointer /Users/gar/.opam/4.10/lib/core_kernel/weak_pointer",

        }
    )

    new_local_pkg_repository(
        name       = "hacl-star-raw",
        build_file = "@//.opam/buildfiles/hacl-star-raw:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/hacl-star-raw",
    )

    new_local_pkg_repository(
        name       = "spawn",
        build_file = "@//.opam/buildfiles/spawn:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/spawn",
    )

    new_local_pkg_repository(
        name       = "fieldslib",
        build_file = "@//.opam/buildfiles/fieldslib:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/fieldslib",
    )

    new_local_pkg_repository(
        name       = "terminal_size",
        build_file = "@//.opam/buildfiles/terminal_size:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/terminal_size",
    )

    new_local_pkg_repository(
        name       = "str",
        build_file = "@//.opam/buildfiles/str:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/str",
    )

    new_local_pkg_repository(
        name       = "mirage-crypto-pk",
        build_file = "@//.opam/buildfiles/mirage-crypto-pk:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/mirage-crypto-pk",
    )

    new_local_pkg_repository(
        name       = "codept",
        build_file = "@//.opam/buildfiles/codept:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/codept",
        subpackages = {
            "@//.opam/buildfiles/codept/ocamlbuild:BUILD.bazel":
            "ocamlbuild /Users/gar/.opam/4.10/lib/codept/ocamlbuild",

        }
    )

    new_local_pkg_repository(
        name       = "ocamldoc",
        build_file = "@//.opam/buildfiles/ocamldoc:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ocamldoc",
    )

    new_local_pkg_repository(
        name       = "base",
        build_file = "@//.opam/buildfiles/base:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/base",
        subpackages = {
            "@//.opam/buildfiles/base/base_internalhash_types:BUILD.bazel":
            "base_internalhash_types /Users/gar/.opam/4.10/lib/base/base_internalhash_types",

            "@//.opam/buildfiles/base/caml:BUILD.bazel":
            "caml /Users/gar/.opam/4.10/lib/base/caml",

            "@//.opam/buildfiles/base/md5:BUILD.bazel":
            "md5 /Users/gar/.opam/4.10/lib/base/md5",

            "@//.opam/buildfiles/base/shadow_stdlib:BUILD.bazel":
            "shadow_stdlib /Users/gar/.opam/4.10/lib/base/shadow_stdlib",

        }
    )

    new_local_pkg_repository(
        name       = "data-encoding",
        build_file = "@//.opam/buildfiles/data-encoding:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/data-encoding",
    )

    new_local_pkg_repository(
        name       = "variantslib",
        build_file = "@//.opam/buildfiles/variantslib:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/variantslib",
    )

    new_local_pkg_repository(
        name       = "uucp",
        build_file = "@//.opam/buildfiles/uucp:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/uucp",
    )

    new_local_pkg_repository(
        name       = "stringext",
        build_file = "@//.opam/buildfiles/stringext:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/stringext",
    )

    new_local_pkg_repository(
        name       = "irmin",
        build_file = "@//.opam/buildfiles/irmin:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/irmin",
        subpackages = {
            "@//.opam/buildfiles/irmin/mem:BUILD.bazel":
            "mem /Users/gar/.opam/4.10/lib/irmin/mem",

        }
    )

    new_local_pkg_repository(
        name       = "fpath",
        build_file = "@//.opam/buildfiles/fpath:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/fpath",
        subpackages = {
            "@//.opam/buildfiles/fpath/top:BUILD.bazel":
            "top /Users/gar/.opam/4.10/lib/fpath",

        }
    )

    new_local_pkg_repository(
        name       = "re",
        build_file = "@//.opam/buildfiles/re:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/re",
        subpackages = {
            "@//.opam/buildfiles/re/emacs:BUILD.bazel":
            "emacs /Users/gar/.opam/4.10/lib/re/emacs",

            "@//.opam/buildfiles/re/glob:BUILD.bazel":
            "glob /Users/gar/.opam/4.10/lib/re/glob",

            "@//.opam/buildfiles/re/pcre:BUILD.bazel":
            "pcre /Users/gar/.opam/4.10/lib/re/pcre",

            "@//.opam/buildfiles/re/perl:BUILD.bazel":
            "perl /Users/gar/.opam/4.10/lib/re/perl",

            "@//.opam/buildfiles/re/posix:BUILD.bazel":
            "posix /Users/gar/.opam/4.10/lib/re/posix",

            "@//.opam/buildfiles/re/str:BUILD.bazel":
            "str /Users/gar/.opam/4.10/lib/re/str",

        }
    )

    new_local_pkg_repository(
        name       = "cohttp",
        build_file = "@//.opam/buildfiles/cohttp:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/cohttp",
    )

    new_local_pkg_repository(
        name       = "dune-configurator",
        build_file = "@//.opam/buildfiles/dune-configurator:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/dune-configurator",
    )

    new_local_pkg_repository(
        name       = "repr",
        build_file = "@//.opam/buildfiles/repr:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/repr",
    )

    new_local_pkg_repository(
        name       = "ppx_fields_conv",
        build_file = "@//.opam/buildfiles/ppx_fields_conv:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ppx_fields_conv",
    )

    new_local_pkg_repository(
        name       = "mtime",
        build_file = "@//.opam/buildfiles/mtime:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/mtime",
        subpackages = {
            "@//.opam/buildfiles/mtime/top:BUILD.bazel":
            "top /Users/gar/.opam/4.10/lib/mtime",

            "@//.opam/buildfiles/mtime/clock:BUILD.bazel":
            "clock /Users/gar/.opam/4.10/lib/mtime",

            "@//.opam/buildfiles/mtime/clock/os:BUILD.bazel":
            "clock/os /Users/gar/.opam/4.10/lib/mtime/os",

            "@//.opam/buildfiles/mtime/clock/jsoo:BUILD.bazel":
            "clock/jsoo /Users/gar/.opam/4.10/lib/mtime/jsoo",

        }
    )

    new_local_pkg_repository(
        name       = "ppx_here",
        build_file = "@//.opam/buildfiles/ppx_here:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ppx_here",
        subpackages = {
            "@//.opam/buildfiles/ppx_here/expander:BUILD.bazel":
            "expander /Users/gar/.opam/4.10/lib/ppx_here/expander",

            "@//.opam/buildfiles/ppx_here/runtime-lib:BUILD.bazel":
            "runtime-lib /Users/gar/.opam/4.10/lib/ppx_here/runtime-lib",

        }
    )

    new_local_pkg_repository(
        name       = "ppx_js_style",
        build_file = "@//.opam/buildfiles/ppx_js_style:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/ppx_js_style",
    )

    new_local_pkg_repository(
        name       = "jst-config",
        build_file = "@//.opam/buildfiles/jst-config:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/jst-config",
    )

    new_local_pkg_repository(
        name       = "mirage-crypto",
        build_file = "@//.opam/buildfiles/mirage-crypto:BUILD.bazel",
        path       = "/Users/gar/.opam/4.10/lib/mirage-crypto",
    )

