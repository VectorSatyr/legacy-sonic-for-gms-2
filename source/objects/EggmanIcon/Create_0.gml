/// @description Initialize
event_inherited();
activate = function ()
{
	game_pc_damage(player, -player.facing_sign);
};