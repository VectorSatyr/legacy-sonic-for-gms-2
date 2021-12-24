/// @description Initialize
event_inherited();
timeline_set(id, BonusStarAnim);
constant = true;
active = false;
next_room = undefined;
reaction_test = function (character)
{
	if (active) {
		with (character) {
			if (
				owner.index == 0 and 
				game_pc_in_shape(id, other.id, x_radius, y_radius)
			) {
				game_pc_react_to(id, other.id);
			}
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
};