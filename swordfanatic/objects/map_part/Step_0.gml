degrees++
if heldRoom = "startroom"
{
	heldRoom = instance_create_layer(x - global.camera_width / 2, y - global.camera_height / 2, "Instances", map_placer)
}
if heldRoom = noone and global.roomloadcooldown = false and createRoom = true
{
	global.roomloadcooldown = true
		heldRoom = instance_create_layer(x - global.camera_width / 2, y - global.camera_height / 2, "Instances", map_placer)
	
	if heldRoom != false and heldRoom != noone
	{
		var avoid = [-4]
		if find_nextdoor_room(0) != noone and not array_contains(avoid, find_nextdoor_room(0).heldRoom)
			heldRoom.doorRight = true
		if find_nextdoor_room(1) != noone and not array_contains(avoid, find_nextdoor_room(1).heldRoom)
			heldRoom.doorDown = true
		if find_nextdoor_room(2) != noone and not array_contains(avoid, find_nextdoor_room(2).heldRoom)
			heldRoom.doorLeft = true
		if find_nextdoor_room(3) != noone and not array_contains(avoid, find_nextdoor_room(3).heldRoom)
			heldRoom.doorUp = true
	}
}