/// @description Ascend
character_index = (character_index + 1) mod total_characters;
character.image_index = character_index;
game_audio_play_sound(BeepSound);