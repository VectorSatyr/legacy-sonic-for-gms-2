/// @description  Lower
if (y < room_height) {
    y = min(y + y_speed, room_height);
    image_yscale = y_scale + ((ystart - y) / mask_height);
}

