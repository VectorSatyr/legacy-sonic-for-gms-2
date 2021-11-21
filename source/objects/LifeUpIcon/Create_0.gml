/// @description Initialize
event_inherited();
amount = 1;
activate = function ()
{
	with (player) {
	    if (state != player_is_defeated and state != player_is_drowning) {
	        game_player_change_lives(owner, other.amount);
	    }
	}
};