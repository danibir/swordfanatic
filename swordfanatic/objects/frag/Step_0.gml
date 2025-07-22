lifetime++
if (lifetime + lifetimeoffet) mod blinkspeed < blinkspeed / 2
	image_alpha = 0.2
else
	image_alpha = 1
	
image_angle += rotation
speed *= 0.9

if speed < 0.1 or place_meeting(x, y, global.tilemap)
	instance_destroy()