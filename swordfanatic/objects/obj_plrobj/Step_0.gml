var xdir = 0
var ydir = 0

if global.cutscene = false or stun > 0
{
	
	if keyboard_check(ord("A"))
		xdir = -1
	if keyboard_check(ord("D"))
		xdir = 1
	if keyboard_check(ord("W"))
		ydir = -1
	if keyboard_check(ord("S"))
		ydir = 1
	if !(xdir = 0 and ydir = 0)
	if keyboard_check_pressed(vk_shift) and dashcooldown <= 0
	{
		dashcooldown = dashcooldownmax
		dashdur = dashdurmax
		dashdir = [xdir, ydir]
		invultimer = dashdurmax * 1.1
	}
		
}
dashdur--
dashcooldown--
if dashdur > 0
{
	var aimg = instance_create_layer(x, y, "Instances", afterimage)
	aimg.sprite_index = sprite_index
	aimg.image_xscale = image_xscale
	aimg.image_yscale = image_yscale
	aimg.decayspeed *= 3
	aimg.image_alpha = 0.5
}
if dashdur > dashdurmax * (1/3)
{
	var _xdash = dashspeed * (1 - 0.6 * (ydir / dashspeed))
	var _ydash = dashspeed * (1 - 0.6 * (xdir / dashspeed))
		xdir = lerp(xdir, dashdir[0] * _xdash, 0.4)
		ydir = lerp(ydir, dashdir[1] * _ydash, 0.4)
}

if dashcooldown = 0
{
	flash = 1
}
flash -= 1/15
flash = max(0, flash)
xspeed += walkspeed * xdir
yspeed += walkspeed * ydir
if keyboard_check(vk_space)
{
	x = lerp(x, mouse_x, 0.5)
	y = lerp(y, mouse_y, 0.5)
}

event_inherited()
sword.x = x
sword.y = y

/*
if grounded > 0
{
	jumps = maxjumps
}
else
{
	jumps = min(jumps, maxjumps - 1)
}
if keyboard_check_pressed(vk_space) and jumps > 0
{
	fallspeed = -4.1		
	jumps--
	jumping = true
}
if fallspeed >= 0
	jumping = false
if not keyboard_check(vk_space) and jumping = true
{
	fallspeed *= 5/6
}