/// @description Move
if (game_is_running()) {
	if (not instance_exists(target)) {
		instance_create_layer(x, y, "objects", LostRing);
		instance_destroy();
	}
	if (x_speed != 0) {
		x += x_speed;
	}
	if (y_speed != 0) {
		y += y_speed;
	}
	if (instance_exists(target)) {
		var ox = sign(target.x - x);
		if (ox != 0) {
			var move_x = follow_speed;
			if (ox != sign(x_speed)) {
				move_x = rebound_speed;
			}
			x_speed = clamp(x_speed + (move_x * ox), -speed_cap, speed_cap);
		}
		var oy = sign(target.y - y);
		if (oy != 0) {
			var move_y = follow_speed;
			if (oy != sign(y_speed)) {
				move_y = rebound_speed;
			}
			y_speed = clamp(y_speed + (move_y * oy), -speed_cap, speed_cap);
		}
	}
}