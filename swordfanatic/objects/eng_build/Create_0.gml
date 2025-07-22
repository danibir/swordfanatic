var seed = random_set_seed(floor(get_timer()))

global.tilemap = layer_tilemap_get_id("TilesCol")

global.camera_width = camera_get_view_width(view_camera[0])
global.camera_height = camera_get_view_height(view_camera[0])
global.roomloadcooldown = true

instance_create_layer(x, y, "Instances", dictionary)

room_count_x = floor(room_width / global.camera_width) - 2
room_count_y = floor(room_height / global.camera_height) - 2
var start_roomx = floor(random_range(1, room_count_x + 1))
var start_roomy = 1 //floor(random_range(0, room_count_y))

startroom = noone
for (var a = 1; a < room_count_x; a++)
{
	var xpos = (a * global.camera_width + global.camera_width / 2) - 16 * a // 
	for (var b = 1; b < room_count_y; b++)
	{
		var ypos = (b * global.camera_height + global.camera_height / 2) - 16 * b// 
		//show_message([xpos, ypos])
		var roompart = instance_create_layer(xpos, ypos, "Instances", map_part)
		roompart.xnum = a
		roompart.ynum = b
		if start_roomx = a and start_roomy = b
		{
			roompart.createRoom = "startroom"
			startroom = roompart
			global.curroom = roompart
			instance_create_layer(roompart.x, roompart.y, "Instances", camera)
			instance_create_layer(roompart.x, roompart.y, "Instances", obj_plrobj)
		}
	}
}


instance_create_layer(x, y, "Instances", music)
instance_create_layer(x, y, "Instances", eng_game)

var generator = instance_create_layer(x, y, "Instances", map_generator)