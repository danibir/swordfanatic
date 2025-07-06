draw_self()
// Create a surface if not already created
var surf = surface_create(sprite_width, sprite_height);

// Draw the sprite onto the surface
surface_set_target(surf);
draw_clear_alpha(c_black, 0);
draw_sprite_ext(sprite_index, image_index, 0, 0, image_xscale, image_yscale, 0, c_white, 1);
surface_reset_target();

// Read pixel at (x, y)
var pxcount = 21
var pycount = 12
for (var px = 0; px < pxcount; px++)
for (var py = 0; py < pycount; py++)
{
	var usepx = (room_width / pxcount) * px + x
	var usepy = (room_height / pycount) * py + y
	var color_value = color_value_to_rgb(surface_getpixel(surf, usepx, usepy))
	if color_value[0] = 255 and color_value[1] = 255 and color_value[2] = 255
	{
		tilemap_set(global.tilemap, 1, px + x / pxcount, py + y / pycount)
	}
	else
	{
		//tilemap_set(global.tilemap, 0, px, py)
	}
	die = true
}

// Don't forget to free the surface after use
surface_free(surf);
/*
draw_set_color(c_ltgrey)
for (var a = 0; a < 21; a++)
for (var b = 0; b < 12; b++)
{
var xpos = a * room_width / 21
var ypos = b * room_height / 12
if a = b * 2
		draw_text(a * room_width / 21, b * room_height / 12, draw_getpixel(a + (room_width / 21) / 2, b + room_height / 12 / 2))
}