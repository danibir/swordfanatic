var afterimageToggle = false
if not instance_exists(host)
	host = noone
	
if host != noone
{
	cooldown--
	if phase <= 1
	{
		flipside = 1
		if point_direction(host.x, host.y, mouse_x, mouse_y) >= 90 and point_direction(host.x, host.y, mouse_x, mouse_y) < 270
		{
			flipside = -1
			if image_xscale > 0
				image_xscale *= -1
		}
		else
		{
			if image_xscale < 0
				image_xscale *= -1
		}
	}
	if cooldown <= 0 and mouse_check_button(mb_left)
	{
		cooldown = 60 / attackspeed
		phase = 1
	}
	timer--
	var duration = 60 / attackspeed
	if phase = 1
	{
		timer = duration / 8 
		phase = 2
	}
	if phase = 2
	{
		side = 1.15 * flipside
		if timer <= 0
		{
			phase = 3
			timer = duration / 4
			if sign(side) != sign(flipside)
				side *= -1
		}
	}
	if phase = 3
	{
		afterimageToggle = true
		//show_message((timer) / (duration / 15))
		side = 1.15
		side *= lerp(flipside, -flipside, 1 - (timer) / (duration / 4))
		//if 1 - (timer) / (duration / 4) > 0.5
		//	side *= -1
			
		angle =  - 90 + 120 * side
		angle = normalize(angle, image_angle, 360)
		//image_angle = normalize(angle, image_angle, 360)
		//image_angle = angle
		if timer <= 0
		{
			phase = 5
			timer = duration / 3
		}
	}
	if phase = 5
	{
		side = -1.15 * flipside
		if timer <= 0
		{
			phase = 0
			side = 1
		}
	}
	if phase = 0
	{
		if sign(side) != sign(flipside)
		side *= -1
	}
	angle =  - 90 + 120 * side + point_direction(host.x, host.y, mouse_x, mouse_y)
	angle = normalize(angle, image_angle, 360)
}

if angle > 360
{
	image_angle -= 360
	angle -= 360
}
if angle < 0
{
	image_angle += 360
	angle += 360
}
var lerpspeed = attackspeed * 0.2
lerpspeed = min(lerpspeed, 1)
image_angle = lerp(image_angle, angle, lerpspeed)
move_direction(host.pixelsize * 0.6, image_angle + 90)
if afterimageToggle = true
{
		if oldAfterImage != noone
		{
			var myAfterimage = instance_create_layer((oldAfterImage.x + x) / 2, (oldAfterImage.y + y) / 2, "Instances", afterimage)
			myAfterimage.sprite_index = sprite_index
			myAfterimage.image_xscale = image_xscale
			myAfterimage.image_yscale = image_yscale
			myAfterimage.image_angle = (normalize(oldAfterImage.image_angle, image_angle, 360) + image_angle) / 2
			myAfterimage.decayspeed = 8
			myAfterimage.image_alpha = 0.5
		}
		var myAfterimage = instance_create_layer(x, y, "Instances", afterimage)
		myAfterimage.sprite_index = sprite_index
		myAfterimage.image_xscale = image_xscale
		myAfterimage.image_yscale = image_yscale
		myAfterimage.image_angle = image_angle
		myAfterimage.decayspeed = 8
		myAfterimage.image_alpha = 0.5
		oldAfterImage = myAfterimage
}
else
{
	oldAfterImage = noone
}
/*
if keyboard_check_pressed(vk_down)
	attackspeed /= 2
if keyboard_check_pressed(vk_up)
	attackspeed *= 2