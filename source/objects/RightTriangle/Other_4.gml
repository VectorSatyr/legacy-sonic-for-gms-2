/// @description  Calculate normal
if (is_undefined(normal) and image_angle == 0) {
    var x1 = bbox_left;
    var y1 = bbox_bottom;
    var x2 = bbox_right;
    var y2 = bbox_top;
    if (image_yscale < 0) {
        x1 = bbox_right;
        x2 = bbox_left;
    }
    if (image_xscale < 0) {
        y1 = bbox_top;
        y2 = bbox_bottom;
    }
    normal = point_direction(x1, y1, x2, y2) div 1;
}

