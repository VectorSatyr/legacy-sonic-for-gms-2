// randomization
randomize();

// fonts
global.CrackersFont = font_add_sprite(CrackersFontSprite, ord(" "), 0, 1);
global.CreditsFont = font_add_sprite_ext(CreditsFontSprite, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-", 0, 1);
global.GaslightFont = font_add_sprite_ext(GaslightFontSprite, " ABCDEFGHIJKLMNOPQRSTUVWXYZ", 1, 2);
global.HUDFont = font_add_sprite_ext(HUDFontSprite, "0123456789", 0, 0);
global.HUDLivesFont = font_add_sprite_ext(HUDLivesFontSprite, "0123456789", 0, 0);
global.RedSystemFont = font_add_sprite_ext(RedSystemFontSprite, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ*©:.", 1, 0);
global.SystemFont = font_add_sprite_ext(SystemFontSprite, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ*©:.", 1, 0);

// platform tools
switch (os_type)
{
case os_windows:
case os_macosx:
	// desktop platforms
	if (os_browser == browser_not_a_browser)
	{
		instance_create_layer(0, 0, "general", DesktopShortcuts);
		instance_create_layer(0, 0, "general", DesktopFPSProfile);
	}
	break;
}

// proceed
room_goto(SplashScreenRoom);