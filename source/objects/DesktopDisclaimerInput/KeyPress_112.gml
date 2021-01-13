/// @description Disclaimer
if (game_is_running() and not instance_exists(DesktopLegalDisclaimer))
{
    instance_create_layer(0, 0, "disclaimer", DesktopLegalDisclaimer);
}