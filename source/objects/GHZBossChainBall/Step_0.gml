/// @description Explode
if (game_is_running()) {
	if (destroy_time > 0) {
		--destroy_time;
		if (destroy_time mod 6 == 0) {
			var ox = x + irandom_range(-24, 24);
			var oy = y + irandom_range(-24, 24);
			game_particles_spawn("heavy_explosion", ox, oy);
			if (destroy_time <= 0) {
				instance_destroy();
			}
		}
	}
}