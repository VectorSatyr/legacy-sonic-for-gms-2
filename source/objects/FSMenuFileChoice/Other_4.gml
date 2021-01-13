/// @description Create Character
event_inherited();
character = instance_create_layer(character_x, character_y, "elements", FSFileCharacter);
character.image_index = character_index;