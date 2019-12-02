var character = argument0;

with (character) {
    var total = ds_list_size(local_instances);
    var ind;
    for (var n = 0; n < total; ++n) {
        ind = local_instances[| n];
        if (script_exists(ind.reaction_script) and ds_list_find_index(reaction_list, ind) == -1) {
            script_execute(ind.reaction_script, ind, "checking");
        }
    }
}
