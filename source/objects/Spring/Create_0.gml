/// @description Initialize
event_inherited();
image_index = 1;
reaction_test = function (character)
{
	with (character) {
		var rotation_offset = angle_wrap(
			round_to(other.image_angle, 90) - mask_direction
		);
		if (game_pc_arms_in_shape(id, other.id, x_wall_radius)) {
			if ((rotation_offset == 270 and x_speed < 0) or 
				(rotation_offset == 90 and x_speed > 0)) {
				game_pc_react_to(id, other.id);
			}
		} else if (game_pc_lower_in_shape(id, other.id, y_radius)) {
			if (rotation_offset == 0 and y_speed >= 0) {
				game_pc_react_to(id, other.id);
			}
		} else if (rotation_offset == 180 and y_speed < 0 and 
			game_pc_upper_in_shape(id, other.id, y_radius)) {
			game_pc_react_to(id, other.id);
		}
	}
}
reaction_on_enter = function (character)
{
	with (character) {
		var rotation_offset = angle_wrap(
			round_to(other.image_angle, 90) - mask_direction
		);
		var x_spring_speed = -dsin(rotation_offset) * other.force;
		var y_spring_speed = -dcos(rotation_offset) * other.force;
		if (x_spring_speed != 0 or y_spring_speed != 0) {
			timeline_set(other.id, SpringAnim, 1, false);
			game_pc_play_sound(id, SpringSound);
			if (x_spring_speed != 0) {
				x_speed = x_spring_speed;
				facing_sign = sign(x_spring_speed);
				if (y_spring_speed == 0) {
					control_lock_time = default_spring_lock_time;
				}
				if (
					state == player_is_glide_sliding or 
					state == player_is_glide_standing
				) {
					game_pc_perform(id, player_is_running);
				} else if (state == player_is_gliding) {
					game_pc_perform(id, player_is_falling);
					game_pc_animate(id, "run");
				}
			}
			if (y_spring_speed != 0) {
				game_pc_perform(id, player_is_falling);
				spinning = false;
				y_speed = y_spring_speed;
				image_angle = gravity_direction;
				var flip = (other.special_animation == true);
				game_pc_animate(id, flip ? "flip" : "rise", flip);
			}
		}
	}
}