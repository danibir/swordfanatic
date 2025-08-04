degrees++
if createRoom = "startroom"
{
	special = "startroom"
	heldRoom = instance_create_layer(x - global.camera_width / 2, y - global.camera_height / 2, "Instances", map_placer)
	createRoom = noone
	heldRoom.enemies = false
}
if heldRoom = noone and global.roomloadcooldown = false and createRoom = true
{
	global.roomloadcooldown = true
		heldRoom = instance_create_layer(x - global.camera_width / 2, y - global.camera_height / 2, "Instances", map_placer)
	
	if heldRoom != false and heldRoom != noone
	{
		heldRoom.sprite_index = roomSprite
		
		var avoid = [-4]
		if autodoor = true
		{
			if find_nextdoor_room(self, 0) != noone and not array_contains(avoid, find_nextdoor_room(self, 0).heldRoom)
			{
				doorRight = true
				find_nextdoor_room(self, 0).doorLeft = true
			}
			if find_nextdoor_room(self, 1) != noone and not array_contains(avoid, find_nextdoor_room(self, 1).heldRoom)
			{
				doorDown = true
				find_nextdoor_room(self, 1).doorUp = true
			}
			if find_nextdoor_room(self, 2) != noone and not array_contains(avoid, find_nextdoor_room(self, 2).heldRoom)
			{
				doorLeft = true
				find_nextdoor_room(self, 2).doorRight = true
			}
			if find_nextdoor_room(self, 3) != noone and not array_contains(avoid, find_nextdoor_room(self, 3).heldRoom)
			{
				doorUp = true
				find_nextdoor_room(self, 3).doorDown = true
			}
		}
		heldRoom.doorRight = doorRight
		heldRoom.doorDown = doorDown
		heldRoom.doorLeft = doorLeft
		heldRoom.doorUp = doorUp
	}
}