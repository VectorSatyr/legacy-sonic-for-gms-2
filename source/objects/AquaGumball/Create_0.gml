/// @description Initialize
event_inherited();
reaction_on_enter = function (character)
{
	with (character) {
		if (state != player_is_defeated and state != player_is_drowning) {
			game_pc_gain_shield(id, AquaShield);
			game_pc_play_sound(id, AquaShieldSound);
		}
	}
	instance_destroy();
}