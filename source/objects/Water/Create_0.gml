/// @description Initialize
event_inherited();
reaction_test = function (character)
{
	if (
		point_in_rectangle(
			character.x_int, character.y_int, 
			bbox_left, bbox_top, bbox_right, bbox_bottom
		)
	) {
		game_pc_react_to(character, id);
	}
}
reaction_on_enter = function (character)
{
	with (character) {
		if (not underwater) {
			underwater = true;
			remaining_air_time = default_remaining_air_time;
			game_pc_refresh_physics(id);
			y_speed *= 0.25;
			if (shield != noone) {
				switch (shield.object_index) {
				case AquaShield:
					remaining_air_time = 0;
					break;
				case ThunderShield:
					with (WaterBlend) {
						flashing = 4;
					}
				case FlameShield:
					instance_destroy(shield);
					shield = noone;
					break;
				}
			}
			if (
				not point_in_rectangle(
					floor(xprevious), floor(yprevious), 
					other.bbox_left, other.bbox_top, 
					other.bbox_right, other.bbox_bottom
				)
			) {
				game_particles_spawn("splash", x_int, other.bbox_top);
				game_pc_play_sound(id, SplashSound);
			}
		}
	}
}
reaction_on_exit = function (character)
{
	with (character) {
		if (underwater) {
			var total = ds_list_size(reaction_list);
			var index;
			for (var n = 0; n < total; ++n) {
				index = reaction_list[| n];
				if (instance_exists(index)) {
					if (
						index.object_index == Water or 
						object_is_ancestor(index.object_index, Water)
					) {
						return false;
					}
				}
			}
			underwater = false;
			remaining_air_time = 0;
			game_pc_refresh_physics(id);
			y_speed *= 2;
			game_pc_play_sound(id, SplashSound);
			game_particles_spawn("splash", x_int, other.bbox_top);
			if (instance_exists(drowning_music)) {
				instance_destroy(drowning_music);
				drowning_music = noone;
			}
		}
	}
}