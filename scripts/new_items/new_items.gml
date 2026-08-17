function item_darkburger() : item_consumable() constructor {
	name = "Darkburger"
	desc = [
        "A mysterious black burger made of... Hey, this is just burnt!"
    ]
	
	use = function(item_index, target_index, caller = -1) {
		if target_index == "noelle" {
			party_heal(global.party_names[target_index], 20, caller)
		} else {
			party_heal(global.party_names[target_index], 70, caller)
		}
		item_delete(item_index)
	}
	reactions = {
		kris:{
			kris: "BRO ITS FUCKING BURNT STOP MAKING ME EAT THIS SHIT",
			susie: "WDYM ITS COOKED TO PERFECTION!!!!!!!??????"
			
		},
		susie: "Cooked to perfection!",
		ralsei: "A bit burnt...?",
		noelle: "I-is this real meat...?",
	}
    
    buy_price = 70
	sell_price = 35
    
}
item_register(item_darker_candy)