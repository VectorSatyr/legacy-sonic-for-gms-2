/// @description Restart
with (GamePlayer)
{
	game_player_set_rings(id, 0);
	lives_via_rings = 0;
}
game_screen_fade_out(BlackFadeShd, 22, room);
game_audio_fade_out_music(22);
instance_destroy();