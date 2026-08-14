var player = object_get_name(other.object_index)

cutscene_create()
cutscene_player_canmove(false)
cutscene_actor_move(player, new actor_movement(
	160,
	0,
	30
))