/// @description Setup
var back = game_parallax_add_sprite(MenuBackgroundSprite, 0, 0, 0, 0, true, true);
timeline_set(back, MenuBackgroundAnim);

var center_x = CAMERA_WIDTH * 0.5;

var title = instance_create_layer(center_x, CAMERA_HEIGHT - 24, "gui", LabeledGameSign);
title.label = "FILE SELECT";
title.font = global.GaslightFont;
title.halign = fa_center;

var title_shadow = instance_create_depth(center_x + 6, CAMERA_HEIGHT - 18, title.depth + 1, LabeledGameSign);
title_shadow.image_blend = c_black;
title_shadow.image_alpha = 0.5;
title_shadow.label = "FILE SELECT";
title_shadow.font = global.GaslightFont;
title_shadow.halign = fa_center;

game_screen_fade_in(BlackFadeShd, 22);
game_window_update_ports(1);
game_audio_enqueue_music(MenuScreenMusic, 2, true);