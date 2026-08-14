// Inherit the parent event
event_inherited();
if party_contains("ralsei") {
	cutscene_create()
	cutscene_player_canmove(false)
	cutscene_dialogue([
			"{char(ralsei, 3)}* Want Me To Bake You A Cake?",
			"{choice(`Yes`, `No`)}"
		], "{e}")
	cutscene_func(function() {
		if (global.temp_choice == 0) {
			cutscene_audio_play(snd_item, false)
			item_add(new item_top_cake()) 
			cutscene_dialogue("{char(ralsei, 2)}* Have Some!")
		}
		else {
			cutscene_dialogue("{char(ralsei, 3)}* Okay!")
		}
	})
	cutscene_player_canmove(true)
	cutscene_play()
} else {
	dialogue_start("* Can't Bake A Cake Without Ralsei")
}



