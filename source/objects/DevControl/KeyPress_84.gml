/// @description Add chaos emeralds
if (emeralds < 7)
{
    game_save_collect_emerald(emeralds, game_save_current());
    game_audio_play_sound(ChaosEmeraldSound);
    ++emeralds;
}