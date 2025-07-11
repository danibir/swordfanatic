
xspeed *= 0.6
yspeed *= 0.6

var horCol = move_and_collide(xspeed, 0, global.tilemap)
var verCol = move_and_collide(0, yspeed, global.tilemap)
/*
if array_length(verCol) > 0
{
	fallspeed = 0
	grounded = 5
}
else
{
	grounded--
}