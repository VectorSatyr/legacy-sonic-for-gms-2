event_inherited();
/// Initialize
opened = false;
waiting_for_animals = false;

button = instance_create_layer(x, y, "objects", SolidSwitch);
button.target = id;

