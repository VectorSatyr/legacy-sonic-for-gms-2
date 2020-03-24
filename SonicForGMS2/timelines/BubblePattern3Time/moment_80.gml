/// @description  Release bubble
var bubble = instance_create_layer(xstart, ystart - 5, "effects", Bubble);
bubble.angle = choose(0, 180);
bubble.maximum_size = choose(2, 3);
instance_destroy();