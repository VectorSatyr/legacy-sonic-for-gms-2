/// @description Shade
var owner = game_player_find(view_current);
with (owner)
{
	instance_perform_user_event(character.shader, 2);
}
event_inherited();
with (owner)
{
	instance_perform_user_event(character.shader, 3);
}