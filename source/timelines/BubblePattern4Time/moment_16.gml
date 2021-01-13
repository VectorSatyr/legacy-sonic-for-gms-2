/// @description  Release bubble
var bubble = instance_create_layer(xstart, ystart - 5, "effects", Bubble);
bubble.angle = choose(0, 180);
bubble.maximum_size = 5;
instance_destroy();