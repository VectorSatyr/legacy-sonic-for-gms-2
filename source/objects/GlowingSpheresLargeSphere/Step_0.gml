 /// @description Control
if (game_is_running()) {
	var index, z_radius, ox, oy;
	with (PlayableCharacter) {
		if (linked_object_id == other.id) {
			index = owner.index;
			if (input_action_pressed) {
				game_pc_perform(id, player_is_falling, true);
				game_pc_lift(
					id, other.force * other.z_depth[index], 
					other.angle[index] + 90
				);
				continue;
			}
			if (horizontal_axis_value != 0) {
				other.angle[index] = angle_wrap(
					other.angle[index] - (
						other.shift_speed * horizontal_axis_value
					)
				);
			} 
			other.z_pos[index] = (
				other.z_pos[index] + other.rotation_speed
			) mod 360;
			other.z_depth[index] = -dsin((other.z_pos[index] + 90) mod 360);
			z_radius = dsin(other.z_pos[index]) * other.radius;
			ox = dcos(other.angle[index]) * z_radius;
			oy = -(dsin(other.angle[index]) * z_radius);
			game_pc_position(id, other.x + ox, other.y + oy);
			game_pc_memorize_reactions(id);
			game_pc_refresh_local_index(id);
			game_pc_trigger_reactions(id);
		}
	}
}