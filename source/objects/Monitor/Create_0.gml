/// @description Initialize
event_inherited();
gravity_force = 0;
icon = MonitorIcon;
icon_instance = -1;
reaction_test = function (character)
{
	with (character) {
		if (
			(
				spinning or state == player_is_gliding or 
				state == player_is_glide_sliding
			) and game_pc_in_shape(id, other.id, x_wall_radius, y_radius)
		) {
			game_pc_react_to(id, other.id);
		}
	}
};
reaction_on_enter = function (character)
{
	with (character) {
		if (not on_the_ground) {
			if (
				y_speed < 0 and game_pc_upper_in_shape(id, other.id, y_radius)
			) {
				y_speed = 0;
				other.y_speed = -2;
				other.gravity_force = 0.21875;
				break;
			} else if (
				y_speed >= 0 and game_pc_lower_in_shape(id, other.id, y_radius)
			) {
				y_speed = -y_speed;
				if (state == player_is_aqua_bouncing) {
					game_pc_perform(id, player_is_jumping);
					game_pc_play_sound(id, AquaBounceSound);
				}
			}
		}
		game_pc_play_sound(id, PopSound);
		game_particles_spawn("explosion", other.x, other.y);
		other.icon_instance.release(id);
		instance_create_depth(other.x, other.y, other.depth, BrokenMonitor);
		instance_destroy(other.id);
	}
}