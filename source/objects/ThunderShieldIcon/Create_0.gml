/// @description Initialize
event_inherited();
activate = function ()
{
	with (player) {
	    if (state != player_is_defeated and state != player_is_drowning) {
	        game_pc_gain_shield(id, ThunderShield);
	        game_pc_play_sound(id, ThunderShieldSound);
	    }
	}
};