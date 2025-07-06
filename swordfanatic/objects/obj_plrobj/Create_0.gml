event_inherited()

jumping = false
pixelsize = 14
image_xscale *= pixelsize
image_yscale *= pixelsize

sword = instance_create_layer(x, y, "Instances", obj_sword)
sword.host = self