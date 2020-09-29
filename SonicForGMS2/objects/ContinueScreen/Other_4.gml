/// @description Setup
game_window_update_ports(1);
game_screen_fade_in(BlackFadeShd, 22);
game_audio_enqueue_music(ContinueMusic, 2, false);

postContinueText = instance_create_layer(continue_x, continue_y, "gui", LabeledGameSign);
postContinueText.label = continue_text;
postContinueText.font = global.GaslightFont;
postContinueText.halign = fa_center;

postCountdownText = instance_create_layer(countdown_x, countdown_y, "gui", LabeledGameSign);
postCountdownText.label = countdown_text;
postCountdownText.font = global.HUDFont;
postCountdownText.halign = fa_center;

postStars = instance_create_layer(stars_x, stars_y, "gui", GameSign);
postStars.sprite_index = ContinueScreenStarsSprite;

if (total_icons > 0)
{
	for (var n = 0; n < total_icons; ++n)
	{
		postIcon[n] = instance_create_layer(
			icon_x - (icon_separation * (total_icons - 1) * 0.5) + (icon_separation * n), 
			icon_y, "gui", GameSign);
		postIcon[n].sprite_index = icon_sprite;
	}
}