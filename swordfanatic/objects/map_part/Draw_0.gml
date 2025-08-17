draw_self()
var count = 12
var length = 12
draw_set_color(image_blend)

draw_text(x, y, [xnum, ynum])

draw_line(x - global.camera_width / 2, y - global.camera_height / 2, x + global.camera_width / 2, y + global.camera_height / 2)

var nextroom = find_nextdoor_room(self, floor(random_range(0, 4)))
//if nextroom != noone
//draw_line(x, y, nextroom.x, nextroom.y)

if array_contains(dir, "right")
{
	draw_line_width(x, y, x + 20, y, 5)
}
if array_contains(dir, "left")
{
	draw_line_width(x, y, x - 20, y, 5)
}
if array_contains(dir, "down")
{
	draw_line_width(x, y, x, y + 20, 5)
}
if array_contains(dir, "up")
{
	draw_line_width(x, y, x, y - 20, 5)
}