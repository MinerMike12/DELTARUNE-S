function item_w_sparklesword() : item_weapon() constructor {
	name = ["Sparklesword"]
	desc = ["A vary sparkly weapon", "--"]
	lw_counterpart = item_w_lw_halloween_pencil
    
	stats = {
		attack: 6, 
	}
	effect = {
        text: "Sparlkyness UP",
        sprite: spr_ui_menu_icon_up
    }
	icon = spr_ui_menu_icon_sword
	
	weapon_whitelist = ["kris"]
	
	reactions = {
		susie: "Too... Sparkly?",
		ralsei: "Its very sparkly isnt it kris?",
        noelle: "(It's kinda cool...)"
	}
    
    buy_price = 500
    sell_price = 200
    
    item_localize("item_w_sparklesword")
}
item_register(item_w_sparklesword);

function item_w_jazscarf() : item_weapon() constructor {
	name = ["Jazscarf"]
	desc = ["Jaz", "--"]
	lw_counterpart = item_w_lw_halloween_pencil
    
	stats = {
		attack: 2, 
		magic: 10,
	}
	effect = {
        text: "Jaz UP",
        sprite: spr_ui_menu_icon_up
    }
	icon = spr_ui_menu_icon_scarf
	
	weapon_whitelist = ["ralsei"]
	
	reactions = {
		susie: "Jazzy, i dont like it",
		ralsei: "Time for some JAZ",
        noelle: "(Jaz? Scarf? What?)"
	}
    
    buy_price = 350
    sell_price = 20
    
    item_localize("item_w_jazscarf")
}
item_register(item_w_jazscarf);