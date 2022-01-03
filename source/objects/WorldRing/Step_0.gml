/// @description Move
if (game_is_running()) {
	with (ThunderShield) {
		if (abs(point_distance(other.x, other.y, x, y)) <= attract_range) {
			var ring = instance_create_layer(
				other.x, other.y, "objects", AttractedWorldRing
			);
			ring.target = id;
			instance_destroy(other.id);
		}
	}
}