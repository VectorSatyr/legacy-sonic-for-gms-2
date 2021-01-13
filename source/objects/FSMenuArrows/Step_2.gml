/// @description Animate
visible = (owner.selected and owner.owner.mode == "select" and owner.owner.cursor.xspeed == 0);
image_alpha = (game_clock_get_step() div flicker_frames) mod 2;