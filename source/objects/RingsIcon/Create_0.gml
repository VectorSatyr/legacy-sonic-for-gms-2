/// @description Initialize
event_inherited();
amount = 10;
activate = function ()
{
	with (player) {
	    if (state != player_is_defeated and state != player_is_drowning) {
	        game_player_change_rings(owner, other.amount);
	    }
	}
};