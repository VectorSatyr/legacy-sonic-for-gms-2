event_inherited();
/// Initialize
reaction_script = player_react_to_corkscrew;

mask = instance_create(xstart, ystart, Solid);
mask.sprite_index = CorkscrewMaskSprite;
mask.reaction_script = player_react_to_speed_based_mask;
mask.threshold = 5;
mask.bottom_solid = false;
mask.normal = 0;

with (instance_create(xstart, ystart, Deactivable)) {
    visible = true;
    sprite_index = other.sprite_index;
    image_index = 1;
    depth = -other.depth;
}

