function enc_set_jaz() : enc_set() constructor {
	debug_name	=	"Jaz Fight"
    
	enemies = [
		new ex_enemy_shadowguy(),
		//new ex_enemy_shadowguy(),
	]
    enemies[0].defeat_marker = 0
    //enemies[1].defeat_marker = 1
    flavor = "* A jaz fight has started!"
    
    party_actions = {};
    for (var i = 0; i < party_length(); ++i) {
	    struct_set(party_actions, global.party_names[i], [
            new item_s_defaultaction(global.party_names[i]),
			new item_s_duelheal(),
        ]);
	}
    
	enemies_pos = [
		[0, 0, true],
		//[-20, 0, true]
	]
    
    target_calculation = ENC_TARGET.ANY
}