/// @description  Change frame (face)
/// @param face
switch (character) {
case Tails:
    image_index = 5;
    break;

case Knuckles:
    image_index = 6;
    break;

default:
    image_index = 4;
}

/// Sparkle (8)
with (SpriteParticles) {
    part_particles_create(system, other.x + 24, other.y + 16, ring_sparkle, 1);
}

