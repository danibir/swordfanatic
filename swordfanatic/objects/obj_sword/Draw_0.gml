draw_self()/*
draw_text(host.x, host.y + 30, attackspeed)
/*
draw_set_color(c_aqua)
draw_text(x, y, angle)
draw_line(host.x, host.y, host.x + pos_direction(50, angle)[0], host.y + pos_direction(50, angle)[1])
draw_set_color(c_white)
draw_text(x, y + 20, image_angle)
draw_line(host.x, host.y, host.x + pos_direction(25, image_angle)[0], host.y + pos_direction(25, image_angle)[1])