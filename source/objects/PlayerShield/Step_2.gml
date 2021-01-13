/// @description  Adjust
event_inherited();
if (game_is_running()) {
    image_xscale = source.facing_sign;
    switch (source.current_animation) {
    case "spin":
        break;
    
    default:
        x -= dsin(source.mask_direction) * 4;
        y -= dcos(source.mask_direction) * 4;
    }
}

