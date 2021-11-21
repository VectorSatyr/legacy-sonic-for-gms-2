/// @description Initialize
event_inherited();
distance = 64;
reaction_test = function (character)
{
	with (character) {
		if (
			point_distance(
				other.xprevious, other.yprevious, other.x, other.y
			) != 0
		) {
			var dir = angle_wrap(
				point_direction(
					other.xprevious, other.yprevious, other.x, other.y
				) + 90
			);
			var rotation = angle_wrap(round_to(dir, 90) - mask_direction);
			var opposite;
			switch (rotation) {
			case 0:
				opposite = game_pc_lower_collision_solid(id, y_radius + 1);
				if (
					game_pc_upper_in_shape(id, other.id, y_radius) and 
					((on_the_ground and ground_id != other.id) or 
					(opposite != noone and opposite != other.id))
				) {
					game_pc_react_to(id, other.id);
				}
				break;
			case 90:
				opposite = game_pc_right_collision_solid(id, x_wall_radius);
				if (
					game_pc_arm_in_shape(id, other.id, -x_wall_radius) and
					opposite != noone and opposite != other.id
				) {
					game_pc_react_to(id, other.id);
				}
				break;
			case 180:
				opposite = game_pc_upper_collision_solid(id, y_radius);
				if (
					((on_the_ground and ground_id == other.id) or 
					game_pc_lower_in_shape(id, other.id, y_radius + 1)) and 
					opposite != noone and opposite != other.id
				) {
					game_pc_react_to(id, other.id);
				}
				break;
			case 270:
				opposite = game_pc_left_collision_solid(id, x_wall_radius);
				if (
					game_pc_arm_in_shape(id, other.id, x_wall_radius) and
					opposite != noone and opposite != other.id
				) {
					game_pc_react_to(id, other.id);
				}
				break;
			}
		}
	}
};
reaction_on_enter = function (character)
{
	game_pc_perform(character, player_is_defeated);
	game_pc_play_sound(character, HurtSound);
};