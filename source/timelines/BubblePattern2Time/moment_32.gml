/// @description  Release large bubble
var bubble = instance_create_layer(xstart, ystart - 5, "effects", Bubble);
bubble.reaction_script = player_react_to_bubble;
bubble.angle = choose(0, 180);
bubble.maximum_size = 6;
instance_destroy();