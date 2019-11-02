/// @description  Destabilize
var ring;
with (MagnetizedRing) {
    if (target == other) {
        ring = instance_create(x, y, LostRing);
        ring.reaction_script = reaction_script;
        instance_destroy();
    }
}

