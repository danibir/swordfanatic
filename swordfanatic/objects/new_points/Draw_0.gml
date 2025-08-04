draw_set_alpha(image_alpha)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_color(color)
var side = "+"
if points < 0
	side = "-"
draw_text(x, y - lifetime / 3, side + string(points))
draw_set_alpha(1)