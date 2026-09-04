var _player = get_leader()
if global.tweaking == true {
	var aftt1 = afterimage(0.1, _player)
	var aftt2 = afterimage(0.1, _player)
	aftt1.speed = 2
	aftt2.speed = 2
	aftt2.direction = 180
}
if global.knight == true {
	var aftk1 = afterimage(0.05, _player)
	aftk1.speed = 2
}
if global.showing_soul == true {
	if !instance_exists(o_emote_soul)
		instance_create(o_emote_soul)
} else {
	if instance_exists(o_emote_soul)
		instance_destroy(o_emote_soul)
}
if global.kris_sliding == true && instance_exists(o_actor_kris) {
	o_actor_kris.sprite_index = spr_kris_sit
}
if global.susie_sliding == true && instance_exists(o_actor_susie) {
	o_actor_susie.sprite_index = spr_kris_sit
}
if global.ralsei_sliding == true && instance_exists(o_actor_ralsei) {
	o_actor_ralsei.sprite_index = spr_kris_sit
}
if global.noelle_sliding == true && instance_exists(o_actor_noelle) {
	o_actor_noelle.sprite_index = spr_kris_sit
}