/// @description  Behave
if (game_is_running()) {
    if (script_exists(state)) {
        script_execute(state, "step");
        if (state_changed) {
            state_changed = false;
        }
    }
}

