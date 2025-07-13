
draw_sprite_ext(sprite_index, image_index, 0, 0, image_xscale, image_yscale, 0, c_white, 1);
// Create a surface if not already created
var surf = surface_create(sprite_width, sprite_height);

// Draw the sprite onto the surface
surface_set_target(surf);
draw_clear_alpha(c_black, 0);
draw_sprite_ext(sprite_index, image_index, 0, 0, image_xscale, image_yscale, 0, c_white, 1);
surface_reset_target();

// Read pixel at (x, y)

var pxcount = 20
var pycount = 12
for (var px = 0; px + 0 < pxcount; px++)
for (var py = 0; py + 0 < pycount; py++)
{
	var usepx = (global.camera_width / pxcount) * px
	var usepy = (global.camera_height / pycount) * py
	//show_message([usepx, usepy])
	var color_value = color_value_to_rgb(surface_getpixel(surf, usepx, usepy))
	if color_value[0] = 255 and color_value[1] = 255 and color_value[2] = 255
	{
		tilemap_set(global.tilemap, 1, px + (x * 1.25) / pxcount, py + (y * 0.75) / pycount)
	}
	else
	{
		//tilemap_set(global.tilemap, 0, px, py)
	}
	if px = 0 and doorLeft = true or py = 0 and doorUp = true or px = pxcount - 1 and doorRight = true or py = pycount - 1 and doorDown = true
	{
		var door = false
		if px >= floor(pxcount / 2 - 1) and px <= ceil(pxcount / 2)
			door = true
		if py >= floor(pycount / 2 - 1) and py <= ceil(pycount / 2)
			door = true
		if door = true
			tilemap_set(global.tilemap, 0, px + (x * 1.25) / pxcount, py + (y * 0.75) / pycount)
	}
	
	die = true
}

// Don't forget to free the surface after use
//*/
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