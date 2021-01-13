/// @description  Destabilize
var ring;
with (MagnetizedRing) {
    if (target == other) {
        ring = instance_create_layer(x, y, "objects", LostRing);
        ring.reaction_script = reaction_script;
        instance_destroy();
    }
}

