/// @description Initialize
event_inherited();
duration = 1200;
activate = function ()
{
	with (player) {
	    if (state != player_is_defeated and state != player_is_drowning) {
	        superspeed_time = other.duration;
	        game_pc_refresh_physics(id);
	    }
	}
};