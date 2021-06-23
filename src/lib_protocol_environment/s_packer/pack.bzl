def pack(type, num, srcs):
    native.genrule(
        name = "gen_v{}".format(num),
        srcs = srcs,
        outs = ["v{}.ml".format(num)],
        cmd = "$(execpath //src/lib_protocol_environment/s_packer:exe) {} $(SRCS) > $(@)".format(type),
        tools = ["//src/lib_protocol_environment/s_packer:exe"],
    )
