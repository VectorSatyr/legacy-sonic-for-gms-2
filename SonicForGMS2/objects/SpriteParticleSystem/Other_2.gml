/// @description Setup
particles[? "splash"] = part_type_create();
part_type_sprite(particles[? "splash"], SplashSprite, 1, 1, 0);
part_type_life(particles[? "splash"], 32, 32);

particles[? "bubble_pop"] = part_type_create();
part_type_sprite(particles[? "bubble_pop"], BubblePopSprite, 1, 1, 0);
part_type_life(particles[? "bubble_pop"], 10, 10);

particles[? "ring_sparkle"] = part_type_create();
part_type_sprite(particles[? "ring_sparkle"], RingSparkleSprite, 1, 1, 0);
part_type_life(particles[? "ring_sparkle"], 24, 24);

particles[? "explosion"] = part_type_create();
part_type_sprite(particles[? "explosion"], ExplosionSprite, 1, 1, 0);
part_type_life(particles[? "explosion"], 40, 40);

particles[? "heavy_explosion"] = part_type_create();
part_type_sprite(particles[? "heavy_explosion"], HeavyExplosionSprite, 1, 1, 0);
part_type_life(particles[? "heavy_explosion"], 56, 56);

particles[? "brake_dust"] = part_type_create();
part_type_sprite(particles[? "brake_dust"], BrakeDustSprite, 1, 1, 0);
part_type_life(particles[? "brake_dust"], 16, 16);

particles[? "drop_dash_dust"] = part_type_create();
part_type_sprite(particles[? "drop_dash_dust"], DropDashDustSprite, 1, 1, 0);
part_type_life(particles[? "drop_dash_dust"], 16, 16);

particles[? "thunder_spark"] = part_type_create();
part_type_sprite(particles[? "thunder_spark"], ThunderShieldSparkSprite, 1, 0, 0);
part_type_life(particles[? "thunder_spark"], 21, 21);
part_type_speed(particles[? "thunder_spark"], 2, 2, 0, 0);

particles[? "capsule_lock"] = part_type_create();
part_type_sprite(particles[? "capsule_lock"], CapsuleLockSprite, 0, 0, 0);
part_type_life(particles[? "capsule_lock"], 100, 100);
part_type_speed(particles[? "capsule_lock"], 9, 9, 0, 0);
part_type_direction(particles[? "capsule_lock"], 45, 45, 0, 0);
part_type_gravity(particles[? "capsule_lock"], 0.21875, 270);