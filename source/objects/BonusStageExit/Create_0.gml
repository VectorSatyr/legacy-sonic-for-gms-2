/// @description Initialize
event_inherited();
next_room = -1;
with (ZoneCheckPoint) {
	other.next_room = location;
}
reaction_test = function (character)
{
	with (character) {
		if (
			owner.index == 0 and point_in_rectangle(
				x_int, y_int, 
				other.bbox_left, other.bbox_top, 
				other.bbox_right, other.bbox_bottom
			)
		) {
			game_pc_react_to(id, other.id);
		}
	}
};
reaction_on_enter = function (character)
{
	with (character) {
		if (instance_exists(shield)) { 
			game_zone_memory_add(
				"player" + string(owner.index + 1) + "Shield", 
				shield.object_index
			);
		}
	}
	game_screen_fade_out(BlackFadeShd, 22, next_room);
	game_audio_fade_out_music(22);
}