function move_direction(distance, degrees)
{
	var radians = -degtorad(degrees);

	x = x + distance * cos(radians);
	y = y + distance * sin(radians);
}
function pos_direction(distance, degrees)
{
	var radians = -degtorad(degrees);

	return [distance * cos(radians), distance * sin(radians)]
}
function normalize(value, reference, range)
{
	if reference - value > range / 2
		value += range
	if value - reference > range / 2
		value -= range
	return value
}
function sqrt_n(number, strength)
{
	for (var i = 0; i < strength; i++)
		number = sqrt(number)
	return number
}
function color_value_to_rgb (color_value)
{
	var red = (color_value >> 16) & 0xFF;
	var green = (color_value >> 8) & 0xFF;
	var blue = color_value & 0xFF;
	return [red, green, blue]
}
function find_nextdoor_room(dir)
{
	dir = dir % 4
	var myRoom = noone
	var dircord = [0, 0]
	var side = 1
	if dir >= 2
		side *= -1
		
	if dir % 2 = 0
		dircord[0] += (global.camera_width - 16) * side
	else
		dircord[1] += (global.camera_height - 16) * side
	myRoom = instance_nearest(x + dircord[0], y + dircord[1], map_part)
	if point_distance(x + dircord[0], y + dircord[1], myRoom.x, myRoom.y) > 10
		myRoom = noone
	return myRoom
}