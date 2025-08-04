image_blend = c_white
enabled_by_room = true
if instance_nearest(x, y, map_part) != global.curroom
{
	enabled_by_room = false
	image_blend = c_grey
}
hp = min(hp, maxhp)

targeting = false
if not tileCollisionLine(x, y, 1, global.tilemap, 1, distance_to_object(obj_plrobj), point_direction(x, y,  obj_plrobj.x, obj_plrobj.y))
{
	targeting = true
}
if targeting = true
{
	target[0] = obj_plrobj.x + 10* obj_plrobj.xspeed / (0.5+ distance_to_object(obj_plrobj) / 15)
	target[1] = obj_plrobj.y + 10* obj_plrobj.yspeed / (0.5+ distance_to_object(obj_plrobj) / 15)
}