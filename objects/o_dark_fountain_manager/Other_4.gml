if array_contains(global.fountains_open, room) {
	var room_to_go_to = struct_get(global.fountain_rooms, room)
	room_goto(room_to_go_to)
	call_later(2, time_source_units_frames, function() {
		party_leader_warp(MARKER_LAND, 0);
	})
}