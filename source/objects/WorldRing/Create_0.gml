/// @description Initialize
event_inherited();
reaction_on_enter = function (character)
{
	game_player_change_rings(character.owner, 1);
	game_particles_spawn("ring_sparkle", x, y);
	instance_destroy();
	with (ZoneConfiguration) {
	    --total_ring_count;
	}
}