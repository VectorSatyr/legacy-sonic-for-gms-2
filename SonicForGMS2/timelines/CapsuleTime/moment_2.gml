/// @description  Pop
game_audio_play_sound(PopSound);
with (SpriteParticles) {
    part_particles_create(system, other.x, other.y - 39, explosion, 1);
}

