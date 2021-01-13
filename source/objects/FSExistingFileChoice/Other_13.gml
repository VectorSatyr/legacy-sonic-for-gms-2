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
    switch (file.assist_character)
	{
    case Tails: character_index = 0; break;
    }
    switch (file.location)
	{
    case DemoZone1: location_index = 1; break;
    case DemoZone2: location_index = 2; break;
    }
    title_label = "ZONE" + string_format(location_index, 2, 0);
    lives_label = string(file.player_lives);
    continues_label = string(file.player_continues);
}