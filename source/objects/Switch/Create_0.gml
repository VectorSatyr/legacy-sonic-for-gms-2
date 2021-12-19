/// @description Initialize
event_inherited();
activated = false;
target = noone;
reaction_test = function (character)
{
	with (character) {
		if (ground_id == other.id) {
			game_pc_react_to(id, other.id);
		}
	}
};
reaction_on_enter = function (character)
{
	activated = true;
	instance_perform_user_event(target, 0);
};
reaction_on_exit = function (character)
{
	activated = false;
};