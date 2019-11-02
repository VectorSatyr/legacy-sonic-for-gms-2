/// @description  Open
if (not opened) {
    timeline_index = CapsuleTime;
    timeline_running = true;
    timeline_loop = false;
    opened = true;
    with (ZoneTimeLimit) {
        enabled = false;
    }
    with (PlayableCharacter) {
        game_pc_lose_super(self);
        stage_end = true;
    }
}

