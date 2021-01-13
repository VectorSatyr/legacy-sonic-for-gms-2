function game_pc_trigger_reactions(argument0) {
	var character = argument0;

	game_pc_find_reactions(character);
	game_pc_enter_reactions(character);
	game_pc_exit_reactions(character);


}
