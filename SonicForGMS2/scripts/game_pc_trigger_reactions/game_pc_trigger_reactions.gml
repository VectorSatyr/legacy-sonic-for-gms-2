/// @description  game_pc_trigger_reactions(character)
/// @param character

var character = argument0;

game_pc_find_reactions(character);
game_pc_enter_reactions(character);
game_pc_exit_reactions(character);

/*
with (character) {
    var total = ds_list_size(local_instances);
    var n, ind;
    for (n = 0; n < total; ++n) {
        ind = local_instances[| n];
        if (ind.reaction_script != -1 and ds_list_find_index(reaction_list, ind) == -1) {
            script_execute(ind.reaction_script, ind, "checking");
        }
    }

    total = ds_list_size(reaction_list);
    for (n = 0; n < total; ++n) {
        ind = reaction_list[| n];
        if (instance_exists(ind)) {
            if (ind.reaction_script != -1 and ds_list_find_index(previous_reaction_list, ind) == -1) {
                script_execute(ind.reaction_script, ind, "entering");
            }
        }
    }

    total = ds_list_size(previous_reaction_list);
    for (n = 0; n < total; ++n) {
        ind = previous_reaction_list[| n];
        if (instance_exists(ind)) {
            if (ind.reaction_script != -1 and ds_list_find_index(reaction_list, ind) == -1) {
                script_execute(ind.reaction_script, ind, "exiting");
            }
        }
    }
}
*/
