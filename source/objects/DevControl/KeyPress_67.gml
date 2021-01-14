/// @description Toggle debug flight
with (game_player_find(0))
{
    with (character)
	{
        if (state == player_is_debug)
		{
            game_pc_perform(id, player_is_falling);
        }
		else
		{
            game_pc_perform(id, player_is_debug);
        }
    }
}