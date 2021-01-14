function player_perform_thunder_jump() {
	jump_action_available = false;
	y_speed = -thunder_jump_force;

	game_pc_play_sound(id, ThunderJumpSound);

	for (var dir = 45; dir < 360; dir += 90)
	{
		with (SpriteParticleSystem)
		{
		    part_type_direction(particles[? "thunder_spark"], dir, dir, 0, 0);
		}
		game_particles_spawn("thunder_spark", x_int, y_int);
	}


}
