/// @description  Add chaos emeralds
if (emeraldIndex < 7) {
    game_save_collect_emerald(emeraldIndex, game_save_current());
    game_audio_play_sound(ChaosEmeraldSound);
    ++emeraldIndex;
}

