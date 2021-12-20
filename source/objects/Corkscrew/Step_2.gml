/// @description Animate
if (game_is_running()) {
	with (PlayableCharacter) {
		if (linked_object_id == other.id) {
	        var ratio = (x_int - other.bbox_left) / other.sprite_width;
			var distance = (facing_sign < 0) ? 1 - ratio : ratio;
	        image_index = (12 * distance) div 1;
			if (timeline_position > 0) {
				timeline_speed = 0;
			}
		}
	}
}