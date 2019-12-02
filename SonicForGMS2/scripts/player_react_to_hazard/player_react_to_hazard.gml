var ind = argument0;
var phase = argument1;

switch (phase) {
case "checking":
    if (state != player_is_hurt and recovery_time <= 0 and invincibility_time <= 0 and not superform and
        game_pc_in_shape(self, ind, x_radius, y_radius)) {
        game_pc_react_to(self, ind);
    }
    break;

case "entering":
    game_pc_damage(self, sign(x_int - ind.x));
    break;

case "exiting":
    break;
}
