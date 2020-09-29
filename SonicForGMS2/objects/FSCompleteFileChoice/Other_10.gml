/// @description Ascend
location_index = (location_index + 1) mod total_locations;
title_label = "ZONE" + string_format(location_index + 1, 2, 0);
game_audio_play_sound(BeepSound);