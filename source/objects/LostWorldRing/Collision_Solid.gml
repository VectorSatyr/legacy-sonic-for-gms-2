/// @description Bounce
if (game_is_running()) {
	var obj = other.object_index;
	if (y_speed > 0 and not place_meeting(xprevious, yprevious, obj)) {
		y_speed *= -0.75;
		var sine = dsin(gravity_direction);
		var cosine = dcos(gravity_direction);
		for (var n = 0; n < sprite_height and place_meeting(x, y, obj); ++n) {
			x -= cosine;
			y += sine;
		}
	}
}