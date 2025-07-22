draw_sprite_ext(spr_pixel, 1, camera.x - global.camera_width / 2, camera.y - global.camera_height / 2, global.camera_width, global.camera_height, 0, c_black, blackscreen)
if game_loaded = false and wait > 75
{
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_text(camera.x, camera.y + 50, "Loading...")
}