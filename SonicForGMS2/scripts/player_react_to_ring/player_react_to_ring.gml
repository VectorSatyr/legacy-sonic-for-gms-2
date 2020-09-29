var ind = argument0;
var phase = argument1;

switch (phase) {
case "checking":
    if (state != player_is_hurt and recovery_time <= 90 and
        game_pc_in_shape(self, ind, x_radius, y_radius)) {
        game_pc_react_to(self, ind);
    }
    break;

case "entering":
    game_player_change_rings(owner, 1);
	game_particles_spawn("ring_sparkle", ind.x, ind.y);
    instance_destroy(ind);
    break;

case "exiting":
    break;
}
