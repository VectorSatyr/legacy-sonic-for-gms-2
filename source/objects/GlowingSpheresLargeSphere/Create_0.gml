/// @description Initialize
event_inherited();
for (var n = 0; n < MAX_PLAYER_COUNT; ++n) {
	angle[n] = 0;
	z_pos[n] = 0;
	z_depth[n] = 0;
}
reaction_test = function (character)
{
	with (character) {
		if (
			linked_object_id == other.id or 
			game_pc_in_shape(id, other.id, x_radius, y_radius)
		) {
			game_pc_react_to(id, other.id);
		}
	}
};
reaction_on_enter = function (character)
{
	with (character) {
		game_pc_perform(id, player_is_linked);
		x_speed = 0;
		y_speed = 0;
		spinning = true;
		linked_object_id = other.id;
		game_pc_animate(id, "spin");
		image_angle = gravity_direction;
		timeline_speed = 0.2;
		game_pc_camera_direct(id, game_pc_camera_state_aerial);
		var index = owner.index;
		other.angle[index] = point_direction(other.x, other.y, x_int, y_int);
		other.z_pos[index] = (
			point_direction(
				0, abs(other.y - y_int), abs(other.x - x_int), 0
			) + 45
		) mod 360;
	}
};
reaction_on_exit = function (character)
{
	with (character) {
		depth = owner.index;
	}
};