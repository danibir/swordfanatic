angle = 0
image_angle = angle
side = 1
cooldown = 0
if not variable_instance_exists(self, "attackspeed")
	attackspeed = 1.5
timer = 0
phase = 0
oldAfterImage = noone
flipside = choose(-1, 1)
hurtbox = instance_create_layer(x, y, "Instances", hitbox)
hurtbox.evil = false
hurtbox.damage = 1
hurtbox.knockback = 10
hurtbox.enabled = false

image_xscale /= sprite_width
image_yscale /= sprite_height
if not variable_instance_exists(self, "pixelsize")
	pixelsize = 18
image_xscale *= pixelsize / 2
image_yscale *= pixelsize

hurtbox.image_xscale = image_xscale / 2.5
hurtbox.image_yscale = image_yscale * 1

host = noone