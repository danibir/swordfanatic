// Inherit the parent event
event_inherited();

hp = 3
maxhp = 3
weight = 3

target = [x, y]
targeting = false
walkspeed = 5

slide = [0, 0]

//image_blend = c_fuchsia

rocking = random_range(-1, 1)
rockside = choose(-1, 1)
accel = 0
slidecooldownmax = 60
slidecooldown = slidecooldownmax
sliding = false

hurtbox = instance_create_layer(x, y, "Instances", hitbox)
hurtbox.enabled = false
hurtbox.evil = noone
array_push(hurtbox.blacklist, self)
hurtbox.knockback = 5
hurtbox.damage = 1
hitboxtimer = 0
hitboxmaxtimer = 15

waitime = 7 * 60
wait = waitime * random_range(0, 1.5)

evil = true
pixelsize = 14
image_xscale *= pixelsize
image_yscale *= pixelsize
hurtbox.depth--
hurtbox.image_xscale /= hurtbox.sprite_width
hurtbox.image_yscale /= hurtbox.sprite_height
hurtbox.image_xscale *= pixelsize * 0.7
hurtbox.image_yscale *= pixelsize * 0.7