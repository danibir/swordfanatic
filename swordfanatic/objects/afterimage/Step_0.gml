image_alpha -= 1/60 * decayspeed
if image_alpha <= 0
	instance_destroy()