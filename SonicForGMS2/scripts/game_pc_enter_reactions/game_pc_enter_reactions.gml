var character = argument0;

with (character) {
    var total = ds_list_size(reaction_list);
    var ind;
    for (var n = 0; n < total; ++n) {
        ind = reaction_list[| n];
        if (instance_exists(ind)) {
            if (script_exists(ind.reaction_script) and ds_list_find_index(previous_reaction_list, ind) == -1) {
                script_execute(ind.reaction_script, ind, "entering");
            }
        }
    }
}
