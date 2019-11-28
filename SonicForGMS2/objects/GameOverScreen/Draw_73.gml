/// @description  Draw "GAME OVER"
var cam = view_get_camera(view_current);
var cx = camera_get_view_x(cam) + (camera_get_view_width(cam) * 0.5);
var cy = camera_get_view_y(cam) + (camera_get_view_height(cam) * 0.5) - 8;
var ox = 40 + text_screen_ox;

draw_sprite(GameOverGameTextBack, 0, cx - 31 - ox, cy);
draw_sprite(GameOverOverTextBack, 0, cx - 31 + ox, cy);

