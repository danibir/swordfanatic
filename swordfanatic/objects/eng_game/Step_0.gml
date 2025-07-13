wait--
if game_loaded = false
{
	global.cutscene = true
	blackscreen = wait / 60
	if wait < 0
	{
		game_loaded = true
		global.cutscene = false
	}
}