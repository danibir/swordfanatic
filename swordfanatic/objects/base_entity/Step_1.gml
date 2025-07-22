image_blend = c_white
enabled_by_room = true
if instance_nearest(x, y, map_part) != global.curroom
{
	enabled_by_room = false
	image_blend = c_grey
}
hp = min(hp, maxhp)