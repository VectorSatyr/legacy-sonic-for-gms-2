var ind = argument0;
var phase = argument1;

switch (phase) {
case "checking":
    if (owner.index == 0 and
		point_in_rectangle(x_int, y_int, ind.bbox_left, ind.bbox_top, ind.bbox_right, ind.bbox_bottom)) {
        game_pc_react_to(self, ind);
    }
    break;

case "entering":
	if (instance_exists(shield)) { 
		game_zone_memory_add("player" + string(owner.index + 1) + "Shield", shield.object_index);
	}
	game_screen_fade_out(BlackFadeShd, 22, ind.next_room);
    game_audio_fade_out_music(22);
    break;

case "exiting":
    break;
}