if global.world = WORLD_TYPE.LIGHT {
	if keyboard_check_pressed(ord("F")) {
		cutscene_create()
		cutscene_player_canmove(false)
		cutscene_sleep(90)
		cutscene_func(fountain_open, [1])
		cutscene_player_canmove(true)
		cutscene_play()
	} 
}
if keyboard_check_pressed(ord("V")) {
	fountain_seal()
}