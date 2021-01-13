/// @description  Draw
var half_pi = pi * 0.5;
var inc = half_pi / 16;
draw_rectangle_colour(bbox_left, bbox_top, bbox_right, bbox_bottom, bbox_outline_color, bbox_outline_color, bbox_outline_color, bbox_outline_color, true);
draw_primitive_begin(pr_linestrip);
draw_vertex_colour(x + sprite_width, y + sprite_height, image_blend, image_alpha);
for (var n = 0; n <= half_pi; n += inc) {
    draw_vertex_color(x + (cos(n) * sprite_width), y + (sin(n) * sprite_height), image_blend, image_alpha);
}
draw_vertex_colour(x + sprite_width, y + sprite_height, image_blend, image_alpha);
draw_primitive_end();

