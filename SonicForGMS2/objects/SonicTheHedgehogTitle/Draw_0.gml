/// @description  Draw
var color = draw_get_color();
var alpha = draw_get_alpha();

draw_sprite_ext(SonicTheHedgehogTitleSprite, image_index, logo_ox, logo_oy, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

draw_background_ext(LegalDisclaimerInputBack, disclaimer_ox, disclaimer_oy, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

draw_set_alpha(press_start_alpha * image_alpha);
draw_background(press_start_back, press_start_ox, press_start_oy);

draw_set_font(font);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
draw_set_color(font_color);
draw_set_alpha(image_alpha);
draw_text(build_version_ox, build_version_oy, string_hash_to_newline(build_version_text));

draw_set_color(color);
draw_set_alpha(alpha);

