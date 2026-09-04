event_inherited();
global.player = get_leader()
global.ball = false

item_list = [
	 {
        name: "Show Soul",
        action: function() {
			global.showing_soul = !global.showing_soul
        }
    },
    {
        name: "Tweak",
        action: function() {
			global.tweaking = !global.tweaking
        }
    },
    {
        name: "Knight",
        action: function() {
			global.knight = !global.knight
        }
    },
    {
        name: "Trick",
        action: function() {
            cutscene_create()
			cutscene_player_canmove(false)
			cutscene_actor_move(global.player, [
			new actor_movement_jump_into(global.player.x, global.player.y + -150,,20),
			new actor_movement_jump(global.player.x, global.player.y,,30,false)
			])
			cutscene_player_canmove(true)
			cutscene_play()	
        }
    }
];
item_kris_list = [
	{
        name: "Slide",
        action: function() {
			global.kris_sliding = !global.kris_sliding
        }
    }
]
item_susie_list = [
	{
        name: "Slide",
        action: function() {
			global.susie_sliding = !global.susie_sliding
        }
    }
]
item_ralsei_list = [
	{
        name: "Slide",
        action: function() {
			global.ralsei_sliding = !global.ralsei_sliding
        }
    }
]
item_noelle_list = [
	{
        name: "Slide",
        action: function() {
			global.noelle_sliding = !global.noelle_sliding
        }
    }
]

_select = function(_item) {
    instance_destroy();
    audio_play(snd_ui_select);
    
    _item.action();
}

_item_name = function(_item) {
    return _item.name;
}

item_categories = [];
array_push(item_categories, new _item_category("Emotes", item_list));
if instance_exists(o_actor_kris) {
	array_push(item_categories, new _item_category("Kris Emotes", item_kris_list));
}
if instance_exists(o_actor_susie) {
	array_push(item_categories, new _item_category("Susie Emotes", item_susie_list));
}
if instance_exists(o_actor_ralsei) {
	array_push(item_categories, new _item_category("Ralsei Emotes", item_ralsei_list));
}
if instance_exists(o_actor_noelle) {
	array_push(item_categories, new _item_category("Noelle Emotes", item_noelle_list));
}
item_blocked = [];

_sort_items();