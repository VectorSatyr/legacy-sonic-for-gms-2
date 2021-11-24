/// @description Initialize
event_inherited();
activated = false;
bonus_stage_threshold = 20;
activate = function ()
{
	activated = true;
};
preactivate = function ()
{
	activated = true;
};
reaction_test = function (character)
{
	if (
		character.owner.index == 0 and not activated and 
		game_pc_arms_in_shape(character, id, character.x_wall_radius)
	) {
		game_pc_react_to(character, id);
	}
};
reaction_on_enter = function (character)
{
	activate();
	game_zone_check_point_record(x, y);
	game_pc_play_sound(character, LampPostSound);
	if (character.owner.rings >= bonus_stage_threshold) {
		instance_create_layer(x, y - 56, "general", BonusStagePortal);
	}
};