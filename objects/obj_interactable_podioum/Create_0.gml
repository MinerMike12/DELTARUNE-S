// Inherit the parent event
event_inherited();

interaction_code = function() {
	cutscene_create()
	cutscene_player_canmove(false)
	cutscene_dialogue([
	"* Swap Party Members?",
	"{choice(`Swap`, `Dont Swap`)}"
	
	
	], "{e}")
	cutscene_func(function() {
		if global.temp_choice == 0
			instance_create(o_dev_partyselect)
			
	
	})
	cutscene_player_canmove(true)
	cutscene_play()
}
interaction_args = []

