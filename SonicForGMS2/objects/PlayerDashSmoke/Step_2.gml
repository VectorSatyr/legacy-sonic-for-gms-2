/// @description  Validate
event_inherited();
if (instance_exists(source)) {
    if (source.current_animation != "spindash") {
        instance_destroy();
    }
}

