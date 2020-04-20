var ind = argument0;
var phase = argument1;

switch (phase) {
case "checking":
    if (owner.index == 0 and not ind.activated and game_pc_arms_in_shape(self, ind, x_wall_radius)) {
        game_pc_react_to(self, ind);
    }
    break;

case "entering":
	game_zone_check_point_record(ind.x, ind.y);
    instance_perform_user_event(ind, 0);
    game_pc_play_sound(self, LampPostSound);
	if (owner.rings >= ind.bonus_stage_threshold) {
		instance_create_layer(ind.x, ind.y - 56, "general", BonusStagePortal);
	}
    break;

case "exiting":
    break;
}
