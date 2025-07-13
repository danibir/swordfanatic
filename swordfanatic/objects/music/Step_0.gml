//audio_stop_sound(music_instance)
//music_instance = audio_play_sound(mu_MyFirstCave, 0, true, 1, 0, 1)

timer++
if timer > repeattimer
{
	//audio_stop_sound(music_instance)
	var pitch = 1 + random_range(-0.1, 0.1)
	music_instance = audio_play_sound(mu_MyFirstCave, 0, false, volume, 16, pitch)

	timer -= repeattimer / pitch
}