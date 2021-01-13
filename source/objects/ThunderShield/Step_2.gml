/// @description  Magnetize
event_inherited();
var ring;
with (WorldRing) {
    if (abs(point_distance(x, y, other.x, other.y)) <= other.attract_range) {
        ring = instance_create_layer(x, y, "objects", MagnetizedRing);
        ring.reaction_script = reaction_script;
        ring.target = other;
        instance_destroy();
    }
}
with (LostRing) {
    if (abs(point_distance(x, y, other.x, other.y)) <= other.attract_range) {
        ring = instance_create_layer(x, y, "objects", MagnetizedRing);
        ring.reaction_script = reaction_script;
        ring.target = other;
        instance_destroy();
    }
}

