/// @description Initialize
event_inherited();
normal = angle_wrap(22.5 * sign(image_xscale));
bottom_solid = false;
reaction_test = function (character)
{
	with (character) {
		if (
			ground_id == other.id or linked_object_id == other.id or (
				not on_the_ground and y_speed >= 0 and 
				game_pc_lower_in_shape(id, other.id, y_radius + 1)
			)
		) {
			game_pc_react_to(id, other.id);
		}
	}
};
reaction_on_enter = function (character)
{
	with (character) {
		if (ground_id != other.id) {
			game_pc_land(id, other.id);
			var new_dir = game_pc_calc_shape_normal(
				id, other.id, mask_direction
			);
			game_pc_redirect(id, new_dir);

			// eject
			var rotation = round_to(direction, 90);
			var sine = dsin(rotation);
			var cosine = dcos(rotation);
			var x1 = x_int - (cosine * x_radius);
			var y1 = y_int + (sine * x_radius);
			var radius = y_radius + y_snap_distance;
			var x2, y2;
			for (oy = 0; oy < radius; ++oy) {
				x2 = x_int + (cosine * x_radius) + (sine * oy);
				y2 = y_int - (sine * x_radius) + (cosine * oy);
				if (game_shape_in_rectangle(ground_id, x1, y1, x2, y2)) {
					game_pc_eject(id, (y_radius - oy) + 1, rotation);
					break;
				}
			}
		}

		game_pc_perform(id, player_is_linked);
		x_speed = 0;
		y_speed = 0;
		spinning = true;
		linked_object_id = other.id;
		game_pc_animate(id, "spin");
		image_angle = gravity_direction;
		timeline_speed = 0.2;
		game_pc_camera_direct(id, game_pc_camera_state_grounded);
	}
};