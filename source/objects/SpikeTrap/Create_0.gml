/// @description Initialize
event_inherited();
reaction_test = function (character)
{
	with (character) {
		if (
			state != player_is_hurt and recovery_time <= 0 and 
			invincibility_time <= 0 and not superform
		) {
			var rotation_offset = angle_wrap(
				round_to(other.image_angle, 90) - mask_direction
			);
			if (game_pc_arms_in_shape(id, other.id, x_wall_radius)) {
				if (
					(rotation_offset == 270 and x_speed < 0) or 
					(rotation_offset == 90 and x_speed > 0)
				) {
					game_pc_react_to(id, other.id);
				}
			} else if (
				ground_id == other.id or 
				game_pc_lower_in_shape(id, other.id, y_radius)
			) {
				if (rotation_offset == 0 and y_speed >= 0) {
					game_pc_react_to(id, other.id);
				}
			} else if (
				game_pc_upper_in_shape(id, other.id, y_radius) and 
				rotation_offset == 180 and y_speed < 0
			) {
				game_pc_react_to(id, other.id);
			}
		}
	}
}
reaction_on_enter = function (character)
{
	game_pc_damage(character, sign(character.x_int - x), SpikeSound);
}