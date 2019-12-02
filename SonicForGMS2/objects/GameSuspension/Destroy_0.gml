/// @description  Resume the game (if last)
if (instance_number(GameSuspension) == 1) {
    with (all) {
        if (timeline_index != -1) {
            timeline_running = true;
        }
    }

    instance_perform_user_event(ZoneCleanup, 0);
}

