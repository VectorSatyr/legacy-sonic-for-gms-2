/// @description  Draw "GAME OVER"
var cx = __view_get( e__VW.XView, view_current ) + (__view_get( e__VW.WView, view_current ) * 0.5);
var cy = __view_get( e__VW.YView, view_current ) + (__view_get( e__VW.HView, view_current ) * 0.5) - 8;
var ox = 40 + text_screen_ox;

draw_sprite(GameOverGameTextBack, 0, cx - 31 - ox, cy);
draw_sprite(GameOverOverTextBack, 0, cx - 31 + ox, cy);

