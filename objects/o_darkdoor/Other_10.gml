event_inherited();

cutscene_create()
cutscene_player_canmove(false)
cutscene_dialogue([
"Enter?",
"{choice(`Yes`, `No`)}"
], "{e}")
cutscene_func(function() {
	if global.temp_choice == 0
		image_index = 1
		cutscene_actor_move(
		o_actor_kris,
		new actor_movement(o_actor_kris.x, o_actor_kris.y + 30, 30,,, DIR.UP))
		cutscene_actor_move(o_actor_kris, new actor_movement_lw_jump_into(310, 115,,30))
		call_later(50, time_source_units_frames, function() {
			fader_fade(0, 1, 10)
				call_later(10, time_source_units_frames, function() {
					room_goto(room_dw_castle_area_1)
				})
				call_later(12, time_source_units_frames, function() {
					party_leader_warp("land", "fall")
					fader_fade(1, 0, 10)
					global.falling = true
				})
		})
		
	
})
cutscene_player_canmove(true)
cutscene_play()