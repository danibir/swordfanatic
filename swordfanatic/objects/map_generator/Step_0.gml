//show_message([potentialrooms, count])
if array_length(potentialrooms) = 0 and valid = true or count <= 0
{
	//show_message("map generated")
	show_debug_message("map generated")
		global.rooms = allrooms
		instance_destroy(self)
}
else
{
	valid = true
	//eng_game.wait = 90
	//show_message("generating room")
	var placement = [1, 0, 2] //| 0 = r | 1 = d | 2 = l | 3 = u |

	var growroom = array_pop(potentialrooms)
	//show_message(growroom)

	var growcount = choose(0, 1, 1, 1, 2)
	if array_length(potentialrooms) = 0
		growcount = max(growcount, 1)
	//show_message(growcount)
	var generatesuccess = false
	if startroom = true
		growcount = 1
	startroom = false
	for(var i = 0; i < growcount; i++)
	{
		while true
		{
			placement = array_shuffle(placement)
			var place = array_pop(placement)
			//show_message(place)
			if place = undefined
			{
				//show_message("failed to place room")
				break
			}
			hold = noone
			with growroom 
				map_generator.hold = find_nextdoor_room(self, place)
			var newroom = hold
			hold = noone
			//show_message(newroom)
			if newroom != noone and newroom.heldRoom = noone
			{
				if place = 0
				{	
					growroom.doorRight = true
					newroom.doorLeft = true
				}
				if place = 1
				{	
					growroom.doorDown = true
					newroom.doorUp = true
				}
				if place = 2
				{	
					growroom.doorLeft = true
					newroom.doorRight = true
				}
				if place = 3
				{	
					growroom.doorUp = true
					newroom.doorDown = true
				}
				newroom.createRoom = true
				newroom.roomSprite = array_get_random(dictionary.spriteroomlist)
				array_push(potentialrooms, newroom)
				array_push(allrooms, newroom)
				//show_message(potentialrooms)
				//show_message(newroom)
				generatesuccess = true
				count--
				if count = 0
				{
					newroom.roomSprite = roomspr_boss
					newroom.special = "boss"
				}
				break
			}
			if generatesuccess = true
				break
		}
		
	}
}