/// @description  Render
var cam = view_get_camera(view_current);
var vx = camera_get_view_x(cam);
var vy = camera_get_view_y(cam);
var vw = camera_get_view_width(cam);
for (var oy = 0; oy < vw; oy += height) {
    draw_sprite_ext(back, 0, vx + x, vy + y + oy, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}

