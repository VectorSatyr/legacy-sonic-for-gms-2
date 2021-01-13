/// @description  Initialize
event_inherited();
reaction_script = player_react_to_corkscrew;

mask = instance_create_layer(xstart, ystart, "collisions", Solid);
mask.sprite_index = CorkscrewMaskSprite;
mask.reaction_script = player_react_to_speed_based_mask;
mask.threshold = 5;
mask.bottom_solid = false;
mask.normal = 0;

instance_create_depth(x, y, -depth, CorkscrewFront);