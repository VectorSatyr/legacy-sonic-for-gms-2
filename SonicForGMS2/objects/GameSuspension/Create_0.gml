/// @description  Initialize (if first)
if (instance_number(GameSuspension) == 1) {
    with (all) {
        if (timeline_index != -1) {
            timeline_running = false;
        }
    }
    with (Camera) {
        event_perform(ev_step, ev_step_end);
    }
}

