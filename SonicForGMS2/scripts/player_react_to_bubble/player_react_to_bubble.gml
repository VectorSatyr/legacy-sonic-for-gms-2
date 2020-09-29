var ind = argument0;
var phase = argument1;

switch (phase) {
case "checking":
    if (ind.size >= 6 and collision_point(x_int, y_int, ind, false, false) and not on_the_ground) {
        game_pc_react_to(self, ind);
    }
    break;

case "entering":
    game_pc_perform(self, player_is_falling, true);

    remaining_air_time = default_remaining_air_time;

    x_speed = 0;
    y_speed = 0;

    game_pc_animate(self, "breathe", true);

    game_pc_play_sound(self, BreatheSound);
	game_particles_spawn("bubble_pop", ind.x, ind.y);

    if (instance_exists(drowning_music)) {
        instance_destroy(drowning_music);
        drowning_music = noone;
    }

    instance_destroy(ind);
    break;

case "exiting":
    break;
}
