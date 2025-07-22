if not array_contains(gotlist, other) and other.evil != evil and enabled = true and other.invul = false and not array_contains(blacklist, other)
{
	audio_play_sound(aud_weak_hit, 0, false, 2 - 1/damage, 0, 0.5 + 1/damage)
	for(var i = 0; i < damage * 3; i++)
	{
		var fragin = instance_create_layer(x, y, "Instances", frag)
		fragin.image_blend = c_red
	}
	array_push(gotlist, other)
	other.hp -= damage
	var dir = pos_direction(knockback, knockdir)
	other.xknockback = dir[0] / sqrt(other.weight)
	other.yknockback = dir[1] / sqrt(other.weight)
	other.hurtflash = 1
	show_debug_message([other.xknockback, x, "|",  other.yknockback, y])
}