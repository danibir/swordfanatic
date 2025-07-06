global.tilemap = layer_tilemap_get_id("TilesCol")
instance_create_layer(x, y, "Instances", music)

global.camera_width = (view_get_wport(0) / 4)
global.camera_height = (view_get_hport(0) / 4)
for (var a = 0; a < 3; a++)
{
	var xpos = a * global.camera_width + global.camera_width / 2
	for (var b = 0; b < 3; b++)
	{
		var ypos = b * global.camera_height + global.camera_height / 2
		show_message([xpos, ypos])
		instance_create_layer(xpos, ypos, "Instances", map_part)
	}
}


instance_create_layer(x, y, "Instances", camera)