lifetime += 1

image_alpha = 2 - lifetime / 30

if image_alpha <= 0
	instance_destroy()