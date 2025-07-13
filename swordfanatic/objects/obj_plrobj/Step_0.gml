if global.cutscene = false
{
	if keyboard_check(ord("A"))
		xspeed -= 1
	if keyboard_check(ord("D"))
		xspeed += 1
	if keyboard_check(ord("W"))
		yspeed -= 1
	if keyboard_check(ord("S"))
		yspeed += 1
}
if keyboard_check(vk_space)
{
	x = lerp(x, mouse_x, 0.5)
	y = lerp(y, mouse_y, 0.5)
}

event_inherited()

sword.x = x
sword.y = y
with sword
{
}
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