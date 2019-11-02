/// @description  Execute camera behavior
if (game_is_running()) {
    for (var vind = 0; vind < MAX_VIEW_COUNT; ++vind) {
        if (script_exists(script[vind])) {
            with (caller[vind]) {
                script_execute(other.script[vind], vind);
            }
        }
    }
}

