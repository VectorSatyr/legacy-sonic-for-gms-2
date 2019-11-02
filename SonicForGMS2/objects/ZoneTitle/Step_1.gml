/// @description  Update
if (not instance_exists(postYellowLayer)) {
    with (ZoneTimeLimit) {
        enabled = true;
    }
}
if (not instance_exists(postBlueLayer)) {
    instance_destroy();
}

