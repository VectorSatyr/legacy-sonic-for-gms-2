/// @description  Setup

// background animation
var back = game_parallax_add_sprite_layer(MenuBackgroundSprite, 0, 0, 0, 0, true, true);
back.timeline_index = MenuBackgroundAnim;
back.timeline_running = true;
back.timeline_loop = true;
back.timeline_speed = 1;

var center_x = CAMERA_WIDTH * 0.5;

// title
var title = instance_create(center_x, CAMERA_HEIGHT - 24, LabeledGameSign);
title.label = "FILE SELECT";
title.font = global.GaslightFont;
title.halign = fa_center;

var title_shadow = instance_create(center_x + 6, CAMERA_HEIGHT - 18, LabeledGameSign);
title_shadow.image_blend = c_black;
title_shadow.image_alpha = 0.5;
title_shadow.depth = title.depth + 1;
title_shadow.label = "FILE SELECT";
title_shadow.font = global.GaslightFont;
title_shadow.halign = fa_center;

// finished
game_screen_fade_in(BlackFadeShd, 22);
game_window_update_ports(1);
game_audio_enqueue_music(MenuScreenMusic, 2, true);

