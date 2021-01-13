/// @description  Rise
if (y > 0) {
    y = max(y - y_speed, 0);
    image_yscale = y_scale + ((ystart - y) / mask_height);
}

