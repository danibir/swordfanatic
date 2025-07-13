degrees++
if createRoom = "startroom"
{
	createRoom = instance_create_layer(x - global.camera_width / 2, y - global.camera_height / 2, "Instances", map_placer)
}
if createRoom = noone and global.roomloadcooldown = false
{
	global.roomloadcooldown = true
		createRoom = instance_create_layer(x - global.camera_width / 2, y - global.camera_height / 2, "Instances", map_placer)
	
	if createRoom != false and createRoom != noone
	{
		var avoid = [-4]
		if find_nextdoor_room(0) != noone and not array_contains(avoid, find_nextdoor_room(0).createRoom)
			createRoom.doorRight = true
		if find_nextdoor_room(1) != noone and not array_contains(avoid, find_nextdoor_room(1).createRoom)
			createRoom.doorDown = true
		if find_nextdoor_room(2) != noone and not array_contains(avoid, find_nextdoor_room(2).createRoom)
			createRoom.doorLeft = true
		if find_nextdoor_room(3) != noone and not array_contains(avoid, find_nextdoor_room(3).createRoom)
			createRoom.doorUp = true
	}
}