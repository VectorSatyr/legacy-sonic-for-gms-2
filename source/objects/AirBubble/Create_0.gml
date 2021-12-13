/// @description Initialize
event_inherited();
maximum_size = 6;
angle = choose(0, 180);
air_time = 1800;
reaction_test = function (character)
{
	with (character) {
		if (
			other.size >= 6 and collision_point(
				x_int, y_int, other.id, false, false
			) and not on_the_ground
		) {
			game_pc_react_to(id, other.id);
		}
	}
};
reaction_on_enter = function (character)
{
	with (character) {
		game_pc_perform(id, player_is_falling, true);
		if (remaining_air_time < other.air_time) {
			remaining_air_time = other.air_time;
		}
		x_speed = 0;
		y_speed = 0;
		game_pc_animate(id, "breathe", true);
		game_pc_play_sound(id, BreatheSound);
		game_particles_spawn("bubble_pop", other.x, other.y);
		if (instance_exists(drowning_music)) {
			instance_destroy(drowning_music);
			drowning_music = noone;
		}
	}
	instance_destroy(id);
};