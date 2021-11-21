/// @description Initialize
event_inherited();
activate = function ()
{
	with (player) {
	    if (state != player_is_defeated and state != player_is_drowning) {
	        game_pc_perform(id, player_is_transforming);
	        if (owner.rings < 50) {
	            game_player_set_rings(owner, 50);
	        }
	    }
	}
};