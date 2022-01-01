/// @description Initialize
event_inherited();
reaction_on_enter = function (character)
{
	with (character) {
		if (state != player_is_defeated and state != player_is_drowning) {
			game_player_change_lives(owner, other.value);
		}
	}
	instance_destroy();
}