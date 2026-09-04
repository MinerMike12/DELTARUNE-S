function item_s_duelheal() : item_spell() constructor {
	name = "Duel Heal";
	desc = ["Your SOUL shines on Susie and Ralsei!", "Heal Party"];
	use_type = ITEM_USE.EVERYONE;
	tp_cost = 16;
	
    use = method(self, function() {
		var ralsei_magic = party_getdata("ralsei", "magic")
		var susie_magic = party_getdata("susie", "magic")
		cutscene_enc_wait(true)
		cutscene_dialogue("* Your SOUL shines its power on Susie and Susie!",,false)
		cutscene_set_partysprite("ralsei", spr_bralsei_spellready)
		cutscene_sleep(5)
		cutscene_set_partysprite("ralsei", spr_bralsei_spell)
		cutscene_func(party_heal_all, [susie_magic + ralsei_magic * 6 * 1])
		cutscene_sleep(20)
		cutscene_set_partysprite("ralsei", spr_bralsei_idle)
		cutscene_enc_wait(false)
    });
    
    item_localize("item_s_duelheal");
}
item_register(item_s_duelheal);