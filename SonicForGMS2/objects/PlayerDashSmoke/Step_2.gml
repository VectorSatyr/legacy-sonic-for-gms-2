event_inherited();
/// Validate
if (instance_exists(source)) {
    if (source.current_animation != "spindash") {
        instance_destroy();
    }
}

