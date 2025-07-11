angle = 0
image_angle = angle
side = 1
cooldown = 0
if not variable_instance_exists(self, "attackspeed")
	attackspeed = 1
timer = 0
phase = 0
oldAfterImage = noone
flipside = choose(-1, 1)

image_xscale /= sprite_width
image_yscale /= sprite_height
if not variable_instance_exists(self, "pixelsize")
	pixelsize = 24
image_xscale *= pixelsize / 2
image_yscale *= pixelsize

host = noone