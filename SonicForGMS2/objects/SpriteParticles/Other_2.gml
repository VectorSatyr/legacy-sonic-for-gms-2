/// @description Setup
splash = part_type_create();
part_type_sprite(splash, SplashSprite, 1, 1, 0);
part_type_life(splash, 32, 32);

bubble_pop = part_type_create();
part_type_sprite(bubble_pop, BubblePopSprite, 1, 1, 0);
part_type_life(bubble_pop, 10, 10);

ring_sparkle = part_type_create();
part_type_sprite(ring_sparkle, RingSparkleSprite, 1, 1, 0);
part_type_life(ring_sparkle, 24, 24);

explosion = part_type_create();
part_type_sprite(explosion, ExplosionSprite, 1, 1, 0);
part_type_life(explosion, 40, 40);

heavy_explosion = part_type_create();
part_type_sprite(heavy_explosion, HeavyExplosionSprite, 1, 1, 0);
part_type_life(heavy_explosion, 56, 56);

brake_dust = part_type_create();
part_type_sprite(brake_dust, BrakeDustSprite, 1, 1, 0);
part_type_life(brake_dust, 16, 16);

drop_dash_dust = part_type_create();
part_type_sprite(drop_dash_dust, DropDashDustSprite, 1, 1, 0);
part_type_life(drop_dash_dust, 16, 16);

thunder_spark = part_type_create();
part_type_sprite(thunder_spark, ThunderShieldSparkSprite, 1, 0, 0);
part_type_life(thunder_spark, 21, 21);

capsule_lock = part_type_create();
part_type_sprite(capsule_lock, CapsuleLockSprite, 0, 0, 0);
part_type_life(capsule_lock, 100, 100);
part_type_speed(capsule_lock, 9, 9, 0, 0);
part_type_direction(capsule_lock, 45, 45, 0, 0);
part_type_gravity(capsule_lock, 0.21875, 270);