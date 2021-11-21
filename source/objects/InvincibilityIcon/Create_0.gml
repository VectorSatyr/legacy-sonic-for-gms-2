/// @description Initialize
event_inherited();
duration = 1200;
activate = function ()
{
	game_pc_become_invincible(player, duration);
};