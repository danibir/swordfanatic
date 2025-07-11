global.tilemap = layer_tilemap_get_id("TilesCol")
instance_create_layer(x, y, "Instances", music)

global.camera_width = camera_get_view_width(view_camera[0])
global.camera_height = camera_get_view_height(view_camera[0])
for (var a = 0; a < 15; a++)
{
	var xpos = (a * global.camera_width + global.camera_width / 2) + 16 * a // 
	for (var b = 0; b < 15; b++)
	{
		var ypos = (b * global.camera_height + global.camera_height / 2) + 16 * a// 
		//show_message([xpos, ypos])
		instance_create_layer(xpos, ypos, "Instances", map_part)
	}
}


instance_create_layer(x, y, "Instances", camera)