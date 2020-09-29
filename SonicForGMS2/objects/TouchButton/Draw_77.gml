/// @description Render
surface_set_target(application_surface);
draw_self();
draw_sprite_ext(button_sprite, 0, x, y, button_scale, button_scale, image_angle, image_blend, image_alpha);
surface_reset_target();