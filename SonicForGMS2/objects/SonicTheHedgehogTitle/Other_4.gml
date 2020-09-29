/// @description  Setup
game_window_update_ports(1);
game_screen_fade_in(BlackFadeShd, 22);
game_audio_enqueue_music(TitleScreenMusic, 0, false);

postTitleSplash = instance_create_layer(splash_x, splash_y,"gui", GameSign);
postTitleSplash.sprite_index = SonicTheHedgehogTitleSprite;
postTitleSplash.image_alpha = image_alpha;
timeline_set(postTitleSplash, SonicTheHedgehogTitleAnim, 1, false);

postBuildVersion = instance_create_layer(build_version_x, build_version_y, "gui", LabeledGameSign);
postBuildVersion.label = build_version_text;
postBuildVersion.font = global.CrackersFont;
postBuildVersion.halign = fa_right;
postBuildVersion.valign = fa_bottom;
postBuildVersion.image_alpha = image_alpha;

postDisclaimerInput = instance_create_layer(disclaimer_x, disclaimer_y, "gui", GameSign);
postDisclaimerInput.sprite_index = disclaimer_sprite;
postDisclaimerInput.image_alpha = image_alpha;

postStartInput = instance_create_layer(start_x, start_y, "gui", GameSign);
postStartInput.sprite_index = start_sprite;
postStartInput.image_alpha = 0;

switch (os_type)
{
case os_android:
case os_ios:
	instance_create_layer(disclaimer_x, disclaimer_y, "general", MobileDisclaimerInput);
	break;
default:
	instance_create_layer(0, 0, "general", DesktopDisclaimerInput);
}