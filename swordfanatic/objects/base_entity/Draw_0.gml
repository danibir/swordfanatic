shader_set(Shader1)

shader_set_uniform_f(shader_get_uniform(Shader1, "flash"), flash)
shader_set_uniform_f(shader_get_uniform(Shader1, "hurtflash"), hurtflash)

draw_self()

shader_reset()

draw_healthbar(x - sprite_width * 0.5, y + sprite_height * 0.6, x + sprite_width * 0.425, y + sprite_height * 0.65, (hp / maxhp) * 100, c_red, c_orange, c_yellow, 0, true, false)