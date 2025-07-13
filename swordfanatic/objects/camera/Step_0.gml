var freecam = false

if freecam = false
{
	var xgoal = instance_nearest(instance_nearest(x, y, obj_plrobj).x, instance_nearest(x, y, obj_plrobj).y, map_part).x
	var ygoal = instance_nearest(instance_nearest(x, y, obj_plrobj).x, instance_nearest(x, y, obj_plrobj).y, map_part).y
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
//*/
camera_set_view_pos(view_camera[0], x - global.camera_width / 2, y - global.camera_height / 2)