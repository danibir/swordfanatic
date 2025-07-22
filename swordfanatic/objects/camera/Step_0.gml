var freecam = false

if freecam = false
{
	var curroom = instance_nearest(instance_nearest(x, y, obj_plrobj).x, instance_nearest(x, y, obj_plrobj).y, map_part)
	var xgoal = curroom.x
	var ygoal = curroom.y
	var lerpspeed = 8

	x -= lerpspeed * sign(x - xgoal)
	y -= lerpspeed * sign(y - ygoal)

	if abs(x - xgoal) < lerpspeed
		x = xgoal
	if abs(y - ygoal) < lerpspeed
		y = ygoal
}
else
{
	x = instance_nearest(x, y, obj_plrobj).x
	y = instance_nearest(x, y, obj_plrobj).y
}
x += cameraxoffset
y += camerayoffset

cameraxoffset += cameraxshake
cameraxshake = lerp(cameraxshake, -cameraxoffset, 0.2)
camerayshake *= 0.9
camerayoffset += camerayshake
camerayshake = lerp(camerayshake, -camerayoffset, 0.2)
camerayshake *= 0.9
//*/
global.curroom = instance_nearest(x, y, map_part)
camera_set_view_pos(view_camera[0], x - global.camera_width / 2, y - global.camera_height / 2)