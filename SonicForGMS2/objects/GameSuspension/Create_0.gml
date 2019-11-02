/// @description  Initialize (if first)
/// @param if first
if (instance_number(GameSuspension) == 1) {
    with (all) {
        if (timeline_index != -1) {
            timeline_running = false;
        }
    }
    /*
    with (SpriteParticles) {
        if (part_system_exists(system)) {
            part_system_automatic_update(system, false);
        }
    }
    */
    with (Camera) {
        event_perform(ev_step, ev_step_end);
    }
}

/* */
/*  */
