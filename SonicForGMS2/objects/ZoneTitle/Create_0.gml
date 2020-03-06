/// @description  Initialize
event_inherited();
image_speed = 0;

blueLayerEnterSpeed = 16;
blueLayerExitSpeed = 32;
blueLayerEnterDuration = CAMERA_HEIGHT / blueLayerEnterSpeed;
blueLayerExitDuration = CAMERA_HEIGHT / blueLayerExitSpeed;

yellowLayerEnterSpeed = 16;
yellowLayerExitSpeed = 32;
yellowLayerEnterDuration = (CAMERA_WIDTH / yellowLayerEnterSpeed) + 4;
yellowLayerExitDuration = CAMERA_WIDTH / yellowLayerExitSpeed;
yellowLayerHeight = 64;
gameNameWidth = sprite_get_width(ZoneTitleS2GameNameSprite);
gameNameX = CAMERA_WIDTH - gameNameWidth - 20;
gameNameY = CAMERA_HEIGHT - yellowLayerHeight + 8;

redLayerEnterSpeed = 16;
redLayerExitSpeed = 32;
redLayerX = 112;
redLayerEnterDuration = (CAMERA_WIDTH / redLayerEnterSpeed) + 4;
redLayerExitDuration = redLayerX / redLayerExitSpeed;

labelEnterSpeed = 16;
labelExitSpeed = 32;
labelEnterDuration = (CAMERA_WIDTH - 32) / labelEnterSpeed;
labelExitDuration = (CAMERA_WIDTH - 32) / labelExitSpeed;
labelNameX = CAMERA_WIDTH - 32;
labelNameY = 56;
labelZoneWordX = CAMERA_WIDTH - 120;
labelZoneWordY = labelNameY + 24;
labelActX = CAMERA_WIDTH - 56;
labelActY = labelZoneWordY;
labelShadowOx = 2;
labelShadowOy = 2;

labelWait1 = max(blueLayerEnterDuration, yellowLayerEnterDuration, redLayerEnterDuration);
redLayerWait = 70 + labelEnterDuration + (labelWait1 - redLayerEnterDuration);
yellowLayerWait = redLayerWait + redLayerExitDuration + (labelWait1 - yellowLayerEnterDuration);
blueLayerWait = yellowLayerWait + yellowLayerExitDuration + (labelWait1 - blueLayerEnterDuration);
labelWait2 = 45 + blueLayerWait + blueLayerExitDuration - labelEnterDuration;

colorBlue = make_color_rgb(27, 72, 221);
colorYellow = make_color_rgb(255, 253, 0);
colorRed = make_color_rgb(255, 0, 0);

var player = game_player_find(0);
if (instance_exists(player)) {
    switch (player.character_id) {
    case Knuckles: colorBlue = make_color_rgb(0, 145, 0); break;
    case Tails: colorBlue = make_color_rgb(224, 144, 0); break;
    }
}

