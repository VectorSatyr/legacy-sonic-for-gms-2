/// @description  Draw
draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, bbox_outline_color, bbox_outline_color, bbox_outline_color, bbox_outline_color, true);
draw_primitive_begin(pr_linestrip);
draw_vertex_colour(x + sprite_width, y, image_blend, image_alpha);
draw_vertex_colour(x, y + sprite_height, image_blend, image_alpha);
draw_vertex_colour(x + sprite_width, y + sprite_height, image_blend, image_alpha);
draw_vertex_colour(x + sprite_width, y, image_blend, image_alpha);
draw_primitive_end();

