/// @description Descend
character_index = (character_index + total_characters - 1) mod total_characters;
character.image_index = character_index;
game_audio_play_sound(BeepSound);