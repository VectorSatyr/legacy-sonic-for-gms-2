/// @description Load
var file = game_save_find(file_index);
if (instance_exists(file))
{
	emeralds_count = file.player_emeralds;
    switch (file.player_character)
	{
    case Sonic: character_index = 1; break;
    case Tails: character_index = 2; break;
    case Knuckles: character_index = 3; break;
    }
	completion_index = (emeralds_count == power(2, file.total_emeralds) - 1) ?
		character_index + 3 : character_index;
    switch (file.assist_character)
	{
    case Tails: character_index = 0; break;
    }
    lives_label = string(file.player_lives);
    continues_label = string(file.player_continues);
}