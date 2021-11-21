/// @description Initialize
event_inherited();
activate = function ()
{
	with (player) {
	    if (state != player_is_defeated and state != player_is_drowning) {
	        superspeed_time = 1200;
	        game_pc_refresh_physics(id);
	    }
	}
};