 /// @description Rotate
if (game_is_running()) {
	switch (state) {
	case "entering":
		if (x_radius < max_x_radius) {
			x_radius += 0.25;
		}
		if (y_radius < max_y_radius) {
			y_radius += 0.0625;
		}
		if (x_radius >= max_x_radius and y_radius >= max_y_radius) {
			state = "open";
			timer = active_time;
			if (room_exists(next_room)) {
				for (var n = 0; n < total_stars; ++n) {
					stars[n].active = true;
					stars[n].next_room = next_room;
				}
			}
		}
		break;
	case "open":
		if (timer > 0) {
			--timer;
			if (timer <= 0) {
				state = "exiting";
				for (var n = 0; n < total_stars; ++n) {
					stars[n].active = false;
				}
			}
		}
		break;
	case "exiting":
		if (x_radius > 0) {
			x_radius -= 0.25;
		}
		if (y_radius > 0) {
			y_radius -= 0.0625;
		}
		if (x_radius == 0 and y_radius == 0) {
			instance_destroy();
			exit;
		}
		break;
	}
	tilt = (tilt + tilt_speed) mod 360;
	var rotation_tilt = dcos(tilt) * 2;
	for (var n = 0; n < total_stars; ++n) {
		stars[n].x_dir = (stars[n].x_dir + rotation_speed) mod 360;
		stars[n].y_dir = (
			stars[n].y_dir + rotation_speed + rotation_tilt
		) mod 360;
		stars[n].x = x + (dsin(stars[n].x_dir) * x_radius);
		stars[n].y = y + (dcos(stars[n].y_dir) * y_radius);
	}
}