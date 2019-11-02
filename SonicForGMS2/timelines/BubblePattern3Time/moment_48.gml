/// @description  Release large bubble
var bubble = instance_create(xstart, ystart - 5, Bubble);
bubble.reaction_script = player_react_to_bubble;
bubble.angle = choose(0, 180);
bubble.size = 5;

