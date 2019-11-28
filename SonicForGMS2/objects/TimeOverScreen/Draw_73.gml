/// @description  Draw "TIME OVER"
var cam = view_get_camera(view_current);
var cx = camera_get_view_x(cam) + (camera_get_view_width(cam) * 0.5);
var cy = camera_get_view_y(cam) + (camera_get_view_height(cam) * 0.5) - 8;
var ox = 40 + text_screen_ox;

draw_sprite(GameOverTimeTextBack, 0, cx - 31 - ox, cy);
draw_sprite(GameOverOverTextBack, 0, cx - 31 + ox, cy);

/*
var x1 = view_xview[view_current] + view_wview[view_current] * 0.5;
var y1 = view_yview[view_current] + view_hview[view_current] * 0.5;
var ox = 40 + text_screen_ox;

draw_sprite(GameOverTextSprite, 1, x1 - ox, y1);
draw_sprite(GameOverTextSprite, 2, x1 + ox, y1);

/* */
/*  */
