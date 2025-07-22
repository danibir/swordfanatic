shader_set(Shader1)

shader_set_uniform_f(shader_get_uniform(Shader1, "flash"), flash)
shader_set_uniform_f(shader_get_uniform(Shader1, "hurtflash"), hurtflash)

draw_self()

shader_reset()