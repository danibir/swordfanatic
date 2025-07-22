event_inherited()

evil = false
jumping = false
pixelsize = 10
image_xscale *= pixelsize
image_yscale *= pixelsize
walkspeed = 1

hp = 55
maxhp = 55

dashcooldownmax = 30
dashcooldown = 0
dashdurmax = 10
dashspeed = 15
dashdur = 0
dashdir = [0, 0]

depth++

sword = instance_create_layer(x, y, "Instances", obj_sword)
sword.host = self