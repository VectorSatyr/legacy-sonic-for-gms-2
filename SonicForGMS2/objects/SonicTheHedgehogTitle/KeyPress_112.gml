/// @description  Disclaimer
if (game_is_running() and not instance_exists(LegalDisclaimer)) {
    instance_create_depth(0, 0, depth - 1, LegalDisclaimer);
}

