/// @description Disclaimer
if (game_is_running() and not instance_exists(MobileLegalDisclaimer))
{
    instance_create_layer(0, 0, "disclaimer", MobileLegalDisclaimer);
}