
image_blend = c_white
if instance_nearest(x, y, map_part) != global.curroom
	image_blend = c_grey
xspeed *= 0.6
yspeed *= 0.6
xknockback *= 0.8
yknockback *= 0.8

hurtflash = max(0, hurtflash - 1/15)

horCol = []
verCol = []
if global.cutscene = false
{
	horCol = move_and_collide(xspeed, 0, global.tilemap)
	verCol = move_and_collide(0, yspeed, global.tilemap)
}

if array_length(horCol) > 0
{
	xknockback *= 0.9
}
if array_length(verCol) > 0
{
	yknockback *= 0.9
}
horKnock = move_and_collide(xknockback, 0, global.tilemap, 4, 4, 4)
verKnock = move_and_collide(0, yknockback, global.tilemap, 4, 4, 4)
if array_length(horKnock) > 0
{
	xknockback *= -0.6
}
if array_length(verKnock) > 0
{
	yknockback *= -0.6
}

invultimer--
invul = true
if invultimer <= 0
	invul = false

if variable_instance_exists(self, "hurtbox")
{	
	hurtbox.x = x
	hurtbox.y = y
	hurtbox.knockdir = point_direction(x, y, obj_plrobj.x, obj_plrobj.y)
	if array_length(hurtbox.gotlist) > 0
	{
		hitboxtimer--
		if hitboxtimer <= 0
		{
			hurtbox.gotlist = []
			hitboxtimer = hitboxmaxtimer
		}
	}
	else
	{
		hitboxtimer = hitboxmaxtimer
	}
}

if hp <= 0
{
	dead = true
	deadtimer--
	var deadflash = 5
	if deadtimer % deadflash > deadflash / 2
	{
		image_alpha = 1
	}
	else
	{
		if deadtimer % deadflash + 1 > deadflash / 2
			audio_play_sound(aud_weak_hit, 0, false, 0.3, 0, 0.5 + (deadtimer / maxdeadtimer) / 2)
		image_alpha = 0.3
	}
}
else
{
	dead = false
	deadtimer = maxdeadtimer
	image_alpha = 1
}

	