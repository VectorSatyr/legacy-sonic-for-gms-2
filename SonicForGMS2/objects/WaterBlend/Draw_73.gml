/// @description  Blend
var color = draw_get_color();
if (flashing) {
    draw_set_color(c_white);
    gpu_set_blendmode_ext(bm_src_color, bm_zero);

} else {
    draw_set_color(image_blend);
    gpu_set_blendmode_ext(bm_zero, bm_src_color);
}
with (Water) {
    draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);
}
gpu_set_blendmode(bm_normal);
draw_set_color(color);

