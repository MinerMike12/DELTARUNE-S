function shop_seam() : shop() constructor {
	shopkeeper = o_shop_shopkeep_seam
    
    flavor_counter = 0
    flavor = "* Hee hee... Welcome, travellers."
    
    bgm = mus_shop1
    bgm_pitch = 1
    bgm_gain = .97
    
    items = [
        new item_darker_candy(),
        new item_darkburger(),
        new item_a_ambercard(),
        new item_w_spookysword()
    ]
    items[2].shop_in_stock = 3
    items[3].shop_in_stock = 1
    
    options = [
        new shop_option_buy(
            items, 
            function(context) {
                switch context {
                    case SHOP_TALK_CONTEXT.IDLE:
                        return string("What do you like to buy?")
                        
                    case SHOP_TALK_CONTEXT.BOUGHT:
                        return string("Thanks for that.")
                    case SHOP_TALK_CONTEXT.BOUGHT_STORAGE:
                        return string("Thanks, it'll be in your STORAGE.")
                        
                    case SHOP_TALK_CONTEXT.CANCELED:
                        return string("Take your time... Ain't like it's better spent.")
					case SHOP_TALK_CONTEXT.REFUSE:
						return string("What, not good enough?")
                    case SHOP_TALK_CONTEXT.NOT_ENOUGH:
                        return string("Not enough money.")
                    case SHOP_TALK_CONTEXT.NO_SPACE:
                        return string("You're carrying too much.")
                }
            }
        ),
        new shop_option_sell(, function(context) {
            switch context {
                case SHOP_TALK_CONTEXT.IDLE:
                    return string("What kind of junk you got?")
                case SHOP_TALK_CONTEXT.CANCELED:
                    return string("Take your time... Ain't like it's better spent.")
                case SHOP_TALK_CONTEXT.REFUSE:
                    return string("No?")
                    
                case SHOP_TALK_CONTEXT.NO_ITEMS:
                    return string("You don't have anything!")
                case SHOP_TALK_CONTEXT.SELL_CONSUMABLE:
                    return string("Alright, give me an ITEM.")
                case SHOP_TALK_CONTEXT.SELL_WEAPON:
                    return string("What WEAPON will you give me?")
                case SHOP_TALK_CONTEXT.SELL_ARMOR:
                    return string("What ARMOR will you give me?")
                case SHOP_TALK_CONTEXT.SOLD:
                    return string("Thanks for that.")
            }
        }),
        //new shop_option_talk([
        //    new __shop_talk_option("Talk Option", "* Talk Answer")
        //], function(context) {
        //    return string("Don't have anything better to do.")
        //}),
        new shop_option_exit(string("* See you again... Or not. Ha ha ha ha...")),
    ]
}