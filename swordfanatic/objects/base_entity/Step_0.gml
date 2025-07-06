
xspeed *= 0.6
fallspeed += grav

var terrCol = move_and_collide(xspeed, fallspeed, global.tilemap)
if array_length(terrCol) > 0
{
	fallspeed = 0
	grounded = 5
}
else
{
	grounded--
}