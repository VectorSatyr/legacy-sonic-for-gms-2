/// @description  Initialize
if (not instance_exists(PlayerEntrance)) {
    game_start_location_record(xstart, ystart, 0);
}
if (not debug_mode) {
    instance_destroy();
}

