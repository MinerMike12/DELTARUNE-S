/// @param {Real} focal_num the number of the focal_point do not add focal just the number
function fountain_open(focal_num){
	var focal_point = struct_get(global.focal_point, "focal" + string(focal_num))
	var fountain = room_duplicate(focal_point)
	array_push(global.fountains_open, room)
	struct_set(global.fountain_rooms, room, fountain)
	struct_set(global.rooms_fountain, fountain, room)
	room_goto(fountain)
	call_later(2, time_source_units_frames, function() {
		party_leader_warp(MARKER_LAND, 0);
	})
}

function fountain_seal(){
	var og_room = struct_get(global.rooms_fountain, room)
	var dark_world_fountain_room = room
	var index_thingy = array_get_index(global.fountains_open, og_room)
	if array_contains(global.fountains_open, og_room) {
		room_goto(og_room)
		call_later(2, time_source_units_frames, function() {
			party_leader_warp(MARKER_LAND, 0);
		})
		struct_remove(global.fountain_rooms, og_room)
		struct_remove(global.rooms_fountain, dark_world_fountain_room)
		array_delete(global.fountains_open, index_thingy, 1)
		room_instance_clear(dark_world_fountain_room)
		global.world = WORLD_TYPE.LIGHT
	}
}