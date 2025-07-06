draw_self()
var count = 12
var length = 12
draw_set_color(image_blend)
for (var i = 0; i < count; i++)
draw_line(x, y, x + pos_direction(length, (360 / count) * i + degrees)[0], y + pos_direction(length, (360 / count) * i + degrees)[1])

draw_line(x - global.camera_width / 2, y - global.camera_height / 2, x + global.camera_width / 2, y + global.camera_height / 2)