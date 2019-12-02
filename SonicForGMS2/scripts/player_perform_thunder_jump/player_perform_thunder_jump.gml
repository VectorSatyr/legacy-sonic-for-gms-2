jump_action_available = false;

y_speed = -thunder_jump_force;

with (SpriteParticles) {
    part_type_speed(thunder_spark, 2, 2, 0, 0);
    part_type_direction(thunder_spark, 45, 45, 0, 0);
    part_particles_create(system, other.x_int, other.y_int, thunder_spark, 1);

    part_type_speed(thunder_spark, 2, 2, 0, 0);
    part_type_direction(thunder_spark, 135, 135, 0, 0);
    part_particles_create(system, other.x_int, other.y_int, thunder_spark, 1);

    part_type_speed(thunder_spark, 2, 2, 0, 0);
    part_type_direction(thunder_spark, 225, 225, 0, 0);
    part_particles_create(system, other.x_int, other.y_int, thunder_spark, 1);

    part_type_speed(thunder_spark, 2, 2, 0, 0);
    part_type_direction(thunder_spark, 315, 315, 0, 0);
    part_particles_create(system, other.x_int, other.y_int, thunder_spark, 1);
}

game_pc_play_sound(self, ThunderJumpSound);
