action_inherited();
/// Magnetize
var ring;
with (WorldRing) {
    if (abs(point_distance(x, y, other.x, other.y)) <= other.attract_range) {
        ring = instance_create(x, y, MagnetizedRing);
        ring.reaction_script = reaction_script;
        ring.target = other;
        instance_destroy();
    }
}
with (LostRing) {
    if (abs(point_distance(x, y, other.x, other.y)) <= other.attract_range) {
        ring = instance_create(x, y, MagnetizedRing);
        ring.reaction_script = reaction_script;
        ring.target = other;
        instance_destroy();
    }
}

