/// @description Saves and resets the current reaction list for the given player character
/// @argument {real} character playable character instance index
function game_pc_memorize_reactions(character)
{
	with (character) {
		if (not (
			ds_list_empty(reaction_list) and 
			ds_list_empty(previous_reaction_list)
		)) {
			ds_list_copy(previous_reaction_list, reaction_list);
			ds_list_clear(reaction_list);
		}
	}
}

/// @description Adds the given instances to the given player character's reaction list
/// @argument {real} character playable character instance index
/// @argument {real} inst level instance index
function game_pc_react_to(character, inst)
{
	with (character) {
		if (ds_list_find_index(reaction_list, inst) == -1) {
			ds_list_add(reaction_list, inst);
		}
	}
}

/// @description Processes level reactions for the given player character
/// @argument {real} character playable character instance index
function game_pc_trigger_reactions(character)
{
	game_pc_test_reactions(character);
	game_pc_enter_reactions(character);
	game_pc_exit_reactions(character);
}

/// @description Tests for reactions between the given player character and its local instances
/// @argument {real} character playable character instance index
function game_pc_test_reactions(character)
{
	with (character) {
		var total = ds_list_size(local_instances);
		var inst;
		for (var n = 0; n < total; ++n) {
			inst = local_instances[| n];
			if (
				instance_exists(inst) and 
				ds_list_find_index(reaction_list, inst) == -1
			) {
				inst.reaction_test(character);
			}
		}
	}
}

/// @description Executes entry procedure for local instances reacting to the given player character
/// @argument {real} character playable character instance index
function game_pc_enter_reactions(character)
{
	with (character) {
		var total = ds_list_size(reaction_list);
		var inst;
		for (var n = 0; n < total; ++n) {
			inst = reaction_list[| n];
			if (
				instance_exists(inst) and 
				ds_list_find_index(previous_reaction_list, inst) == -1
			) {
				inst.reaction_on_enter(character);
			}
		}
	}
}

/// @description Executes exit procedure for local instances no longer reacting to the given player character
/// @argument {real} character playable character instance index
function game_pc_exit_reactions(character)
{
	with (character) {
		var total = ds_list_size(previous_reaction_list);
		var inst;
		for (var n = 0; n < total; ++n) {
			inst = previous_reaction_list[| n];
			if (
				instance_exists(inst) and 
				ds_list_find_index(reaction_list, inst) == -1
			) {
				inst.reaction_on_exit(character);
			}
		}
	}
}