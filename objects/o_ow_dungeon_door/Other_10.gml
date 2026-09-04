event_inherited();
cutscene_create()
	cutscene_player_canmove(false)
	cutscene_dialogue([
	"* Would you like to enter the {col(gold)}DUNGEON{reset_col}",
	"{choice(`Yes`, `No`)}"
	], "{e}")
	cutscene_func(function() {
		if global.temp_choice == 0 {
			image_index = 1
			audio_play(snd_dooropen);
			fader_fade(0, 1, 7);
			call_later(8, time_source_units_frames, function() {
				image_index = 0
				room_goto(dungeon_forest_1);
				audio_play(snd_doorclose);
				call_later(2, time_source_units_frames, function() {
					party_leader_warp(MARKER_LAND, 0);
				})
				call_later(1, time_source_units_frames, function() {
					fader_fade(1, 0, 10);
				})
			})
		}
	})
	cutscene_player_canmove(true)
	cutscene_play()