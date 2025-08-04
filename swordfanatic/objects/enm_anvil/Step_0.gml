
if enabled_by_room = false and sliding = false
{
	targeting = false
	slidecooldown = slidecooldownmax * 0.5
}
if dead = true
{
	slide = false
	slide = [0, 0]
	targeting = false
}
slidecooldown--
if slidecooldown <= 0
if slide[0] = 0 and slide[1] = 0 and targeting = true
{
	var sensitivity = 15
	var axis = min(abs(target[0] - x), abs(target[1] - y))
	rocking += (rockside) / axis * 2
	if rocking * rockside > 1
		rockside *= -1
	rocking = min(1, abs(rocking)) * sign(rocking)
	image_angle = lerp(image_angle, (45 / (axis - sensitivity * 0.75)) * rocking, 0.15)
	if abs(target[0] - x) < sensitivity
	{
		slide = [0,  sign(target[1] - y)]
		image_angle = 0
	}
	if abs(target[1] - y) < sensitivity
	{
		slide = [sign(target[0] - x), 0]
		image_angle = 0
	}
	accel = 0
	
}
else
{
	sliding = true
	hurtbox.enabled = true
	image_angle = 0
	var aimg = instance_create_layer(x, y, "Instances", afterimage)
	aimg.sprite_index = sprite_index
	aimg.image_xscale = image_xscale
	aimg.image_yscale = image_yscale
	aimg.decayspeed *= 10
	aimg.image_alpha = 0.5
	accel += 1/10 / (1 + accel / 10)
	
}
xspeed += slide[0] * accel
yspeed += slide[1] * accel
if sliding = true
{
	if array_length(horCol) > 0 or array_length(verCol) > 0 or array_length(hurtbox.gotlist) > 0
	{
		audio_play_sound(aud_strong_hit, 0, false, 1, 0.2, 0.8)
		camera.cameraxshake = (xspeed / 2) / (1 + distance_to_object(obj_plrobj) / 150)
		camera.camerayshake = (yspeed / 2) / (1 + distance_to_object(obj_plrobj) / 150)
		xspeed *= -0.8
		yspeed *= -0.8
		for (var i = 0; i < abs(xspeed + yspeed); i++)
			instance_create_layer(x + slide[0] * sprite_width * 0.4, y + slide[1] * sprite_height * 0.4, "Instances", frag)
		slide = [0, 0]
		accel = 0
		slidecooldown = slidecooldownmax
		hurtbox.enabled = false
		sliding = false
		if not array_length(hurtbox.gotlist) > 0
		{
		}
		hurtbox.gotlist = []
	}
	if dead = true
	{
		slide = [0, 0]
		accel = 0
		slidecooldown = slidecooldownmax
		hurtbox.enabled = false
		sliding = false
	}
}

event_inherited()
hurtbox.x = x + xspeed
hurtbox.y = y + yspeed
hurtbox.knockback = 1.75 + (abs(xspeed) + abs(yspeed)) * 2
hurtbox.knockdir = point_direction(x, y, x + slide[0], y + slide[1])

