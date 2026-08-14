if (global.falling == true) {
	cutscene_create()
	cutscene_player_canmove(false)
	cutscene_actor_move(o_actor_kris, new actor_movement_jump(159, 112,, 10, false))
	global.falling = false
	cutscene_player_canmove(true)
	cutscene_play()
}