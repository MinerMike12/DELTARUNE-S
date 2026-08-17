global.console = true

if keyboard_check_pressed(vk_right) or InputPressed(INPUT_VERB.RIGHT)
	selection ++
else if keyboard_check_pressed(vk_left) or InputPressed(INPUT_VERB.LEFT)
	selection --

// cap selection
if selection < 0
	selection = maxparty - 1
if selection > maxparty - 1 
	selection = 0

xoff = lerp(xoff, selection, .4)

if keyboard_check_pressed(ord("Z")) or InputPressed(INPUT_VERB.SELECT) {
	
	var name = struct_get_names(global.party)[selection]
	
	if !party_contains(name, true) {
		party_member_add(name)
        o_console.log_text($"{name} was added to your Party", c_orange);
		audio_play(snd_metalhit)
    }
	else {
		if party_length() > 1 {
			party_member_kick(name)
			o_console.log_text($"{name} was removed from your Party", c_teal);
			audio_play(snd_metalhit)
		} else {
			o_console.log_text($"{name} was not removed from your Party", c_red)
			audio_play(snd_error)
		}
    }
}
if keyboard_check_pressed(ord("X")) or InputPressed(INPUT_VERB.CANCEL) {
	instance_destroy()
}