/// @description Spawns the named particle at the given location the given number of times
/// @argument {string} parttype particle name (Setup in the Game Start event of SpriteParticleSystem)
/// @argument {real} x absolute x-position
/// @argument {real} y absolute y-position
/// @argument {real} number (Optional) number of particles to generate; default is 1
function game_particles_spawn() {
	var number = 1;
	switch (argument_count)
	{
	case 4: number = min(argument[3], 1);
	default:
		var oy = argument[2];
		var ox = argument[1];
		var parttype = argument[0];
	}

	with (SpriteParticleSystem)
	{
		if (ds_map_exists(particles, parttype))
		{
			part_particles_create(system, ox, oy, particles[? parttype], number);
		}
	}


}
