/// @description  player_react_to_ring(ind, phase)
/// @param ind
/// @param  phase

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
    with (SpriteParticles) {
        part_particles_create(system, ind.x, ind.y, ring_sparkle, 1);
    }
    instance_destroy(ind);
    break;

case "exiting":
    break;
}
