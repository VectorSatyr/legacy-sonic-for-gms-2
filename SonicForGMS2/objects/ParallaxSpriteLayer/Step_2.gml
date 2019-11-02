/// @description  Wrap texture
if (game_is_running()) {
    if (sprite_index != -1) {
        image_index += frame_speed;
        x = x mod (sprite_width + x_separation);
        y = y mod (sprite_height + y_separation);
    }
}

