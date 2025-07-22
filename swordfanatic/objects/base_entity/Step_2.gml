
if deadtimer <= 0
{
	for (var i = 0; i < maxhp * 3; i++)
	{
		var fragin = instance_create_layer(x, y, "Instances", frag)
		fragin.image_blend = c_red
	}
	instance_destroy()
}