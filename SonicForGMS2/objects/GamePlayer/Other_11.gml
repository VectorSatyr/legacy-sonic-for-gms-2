/// @description  Create display
if (not is_undefined(character_id)) {
    display = instance_create(0, 0, display_id);
    display.owner = self;
    display.index = index;
    instance_perform_user_event(display, 0);
}

