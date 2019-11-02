/// @description  Load
var file = game_save_find(file_index);
if (instance_exists(file)) {
    chaos_emeralds = file.player_emeralds;

    switch (file.player_character) {
    case Sonic: character_index = 1; break;
    case Tails: character_index = 2; break;
    case Knuckles: character_index = 3; break;
    }

    completion_index = character_index;
    var super = (chaos_emeralds == power(2, file.total_emeralds) - 1);
    completion_index += (super * 3);

    switch (file.assist_character) {
    case Tails: character_index = 0; break;
    }

    lives_text = string(file.player_lives);
    continues_text = string(file.player_continues);
    text = "CLEAR";
}

