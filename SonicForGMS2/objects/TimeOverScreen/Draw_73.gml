/// @description  Draw "TIME OVER"
var cx = __view_get( e__VW.XView, view_current ) + (__view_get( e__VW.WView, view_current ) * 0.5);
var cy = __view_get( e__VW.YView, view_current ) + (__view_get( e__VW.HView, view_current ) * 0.5) - 8;
var ox = 40 + text_screen_ox;

draw_background(GameOverTimeTextBack, cx - 31 - ox, cy);
draw_background(GameOverOverTextBack, cx - 31 + ox, cy);

/*
var x1 = view_xview[view_current] + view_wview[view_current] * 0.5;
var y1 = view_yview[view_current] + view_hview[view_current] * 0.5;
var ox = 40 + text_screen_ox;

draw_sprite(GameOverTextSprite, 1, x1 - ox, y1);
draw_sprite(GameOverTextSprite, 2, x1 + ox, y1);

/* */
/*  */
