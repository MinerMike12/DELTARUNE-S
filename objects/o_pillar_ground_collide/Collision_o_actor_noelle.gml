if o_actor_noelle.is_player == true {
	if touching == false {
		cutscene_create()
		cutscene_player_canmove(false)
		cutscene_party_interpolate()
		cutscene_dialogue([
		"Are you sure you want to leave?",
		"{choice(`Yes`, `No`)}"
		], "{e}")
		cutscene_func(function() {
			if global.temp_choice == 0 {
				fader_fade(0, 1, 10)
				call_later(10, time_source_units_frames, function() {
					room_goto(room_schooldoor)
				})
				call_later(12, time_source_units_frames, function() {
					party_leader_warp("land", "room_schooldoor")
					fader_fade(1, 0, 10)
				})
			cutscene_dialogue("* Bye!")
			if party_contains("ralsei")
				party_member_kick("ralsei")
			} else {
				cutscene_actor_move(o_actor_noelle, new actor_movement(
				o_actor_noelle.x,
				o_actor_noelle.y - 20,
				30
				,
				,
				,
				DIR.DOWN
				))
				call_later(31, time_source_units_frames, function() {
					touching = false
				})
			}
		})
		cutscene_player_canmove(true)
		cutscene_play()
		touching = true
	}
}