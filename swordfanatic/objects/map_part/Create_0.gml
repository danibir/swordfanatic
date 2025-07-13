degrees = 0
createRoom = noone
image_xscale /= sprite_width
image_yscale /= sprite_height
image_xscale *= global.camera_width / 2
image_yscale *= global.camera_height / 2
image_alpha = 0.1

image_blend = choose(c_red, c_yellow, c_lime, c_aqua, c_purple)