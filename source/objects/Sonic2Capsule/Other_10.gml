/// @description  Open
if (not opened) {
	timeline_set(id, CapsuleTime, 1, false);
    opened = true;
    with (ZoneTimeLimit) {
        enabled = false;
    }
    with (PlayableCharacter) {
        game_pc_lose_super(id);
        stage_end = true;
    }
}