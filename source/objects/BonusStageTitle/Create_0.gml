/// @description  Initialize
event_inherited();
image_speed = 0;

font = global.GaslightFont;

blackDuration = 120;
timer = blackDuration - 1;

labelText = "BONUS STAGE";
labelEnterSpeed = 16;
labelExitSpeed = 32;
labelEnterDuration = (CAMERA_WIDTH / 2) / labelEnterSpeed;
labelExitDuration = (CAMERA_WIDTH / 2) / labelExitSpeed;
labelDuration = blackDuration + 22;
draw_set_font(font);
labelNameX = (CAMERA_WIDTH / 2) - (string_width(labelText) / 2);
labelNameY = (CAMERA_HEIGHT / 2) - (string_height(labelText) / 2);
labelShadowX = labelNameX + 2;
labelShadowY = labelNameY + 2;