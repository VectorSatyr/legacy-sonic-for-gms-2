/// @description  Disclaimer
if (game_is_running() and not instance_exists(LegalDisclaimer)) {
    instance_create(0, 0, LegalDisclaimer);
}

