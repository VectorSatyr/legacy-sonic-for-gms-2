var ind = argument0;
var phase = argument1;

switch (phase) {
case "checking":
    if ((spinning or state == player_is_gliding or state == player_is_glide_sliding) and
        game_pc_in_shape(self, ind, x_wall_radius, y_radius)) {
        game_pc_react_to(self, ind);
    }
    break;

case "entering":
    if (not on_the_ground) {
        if (y_speed < 0 and game_pc_upper_in_shape(self, ind, y_radius)) {
            y_speed = 0;
            ind.y_speed = -2;
            ind.gravity_force = 0.21875;
            break;
        } else if (y_speed >= 0 and game_pc_lower_in_shape(self, ind, y_radius)) {
            y_speed = -y_speed;
            if (state == player_is_aqua_bouncing) {
                game_pc_perform(self, player_is_jumping);
                game_pc_play_sound(self, AquaBounceSound);
            }
        }
    }

    game_pc_play_sound(self, PopSound);
	game_particles_spawn("explosion", ind.x, ind.y);

    ind.icon_instance.player = id;
    instance_perform_user_event(ind.icon_instance, 0);

    instance_create_depth(ind.x, ind.y, ind.depth, BrokenMonitor);

    instance_destroy(ind);
    break;

case "exiting":
    break;
}
