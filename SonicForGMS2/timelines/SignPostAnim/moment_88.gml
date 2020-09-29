/// @description  Change frame (face)
switch (character)
{
case Tails: image_index = 5; break;
case Knuckles: image_index = 6; break;
default: image_index = 4;
}

game_particles_spawn("ring_sparkle", x + 24, y + 16);