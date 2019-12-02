/// @description  Initialize
event_inherited();
opened = false;
waiting_for_animals = false;

button = instance_create_layer(x, y, "objects", SolidSwitch);
button.target = id;

