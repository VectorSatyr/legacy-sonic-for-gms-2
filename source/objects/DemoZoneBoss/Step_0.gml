/// @description  Attack
if (game_is_running()) {
    switch (state) {
    case "scanning":
        if (camera_lock.enabled) {
            event_user(0);
            state = "starting";
        }
        break;
    
    case "starting":
        --starting_time;
        if (starting_time <= 0) {
            game_audio_enqueue_music(ZoneBossMusic, 0, true);
            mobile = instance_create_layer(camera_lock.left + CAMERA_WIDTH - 64, camera_lock.top - 48, "objects", GHZBossEggMobile);
            mobile.owner = id;
            mobile.constant = true;
            mobile.camera_left = camera_lock.left;
            mobile.camera_top = camera_lock.top;
            state = "fighting";
        }
        break;

    case "finished":
        --finishing_time;
        if (finishing_time <= 0) {
            game_zone_play_music();
            with (PlayableCharacter) {
                bound_right = room_width - 16;
                with (camera) {
                    bound_right = other.bound_right;
                }
            }
            with (instance_create_layer(0, 0, "objects", CameraLock)) {
                constant = true;
                left = room_width - CAMERA_WIDTH - 16;
            }
            instance_destroy(camera_lock);
            instance_destroy();
        }
        break;
    }
}

