var character = argument0;

with (character) {
    if (not (ds_list_empty(reaction_list) and ds_list_empty(previous_reaction_list))) {
        ds_list_copy(previous_reaction_list, reaction_list);
        ds_list_clear(reaction_list);
    }
}
