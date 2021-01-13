/// @description  Count
if (game_is_running()) {
    if (enabled and count < limit) {
        count++;
        if (count >= limit) {
            count = limit;
            expired = true;
        }
    }
}

