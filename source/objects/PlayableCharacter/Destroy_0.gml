/// @description  Cleanup
ds_list_destroy(local_instances);
ds_list_destroy(local_solids);
ds_list_destroy(reaction_list);
ds_list_destroy(previous_reaction_list);
ds_map_destroy(animations);
ds_map_destroy(sounds);
audio_emitter_free(audio_emitter);

