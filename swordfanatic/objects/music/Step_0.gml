//audio_stop_sound(music_instance)
//music_instance = audio_play_sound(mu_MyFirstCave, 0, true, 1, 0, 1)

timer++
if timer > repeattimer
{
	//audio_stop_sound(music_instance)
	music_instance = audio_play_sound(mu_MyFirstCave, 0, false, volume, 16, 1)

	timer -= repeattimer
}