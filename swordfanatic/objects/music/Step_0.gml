//audio_stop_sound(music_instance)
//music_instance = audio_play_sound(mu_MyFirstCave, 0, true, 1, 0, 1)

timer += delta_time / game_get_speed(gamespeed_microseconds)
if timer > repeattimer
{
	//audio_stop_sound(music_instance)
	var pitch = 1// + random_range(-0.1, 0.1)
	audio_sound_gain(music_instance, 0, 3200)
	music_instance = audio_play_sound(musicasset, 0, false, volume, 0, pitch)

	timer -= repeattimer / pitch
}