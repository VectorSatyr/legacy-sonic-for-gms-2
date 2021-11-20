/// @description Initialize
event_inherited();
reaction_test = function (character)
{
	with (character) {
		if (state != player_is_hurt and recovery_time <= 90 and
	        game_pc_in_shape(id, other.id, x_radius, y_radius)) {
	        game_pc_react_to(id, other.id);
	    }
	}
}
reaction_on_enter = function (character)
{
	game_player_change_rings(character.owner, 1);
	game_particles_spawn("ring_sparkle", x, y);
	instance_destroy();
}