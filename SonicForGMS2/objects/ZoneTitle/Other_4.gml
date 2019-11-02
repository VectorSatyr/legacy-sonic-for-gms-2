/// @description  Setup
var name = game_zone_get_name();
var act = game_zone_get_act();


draw_set_font(global.GaslightFont);
labelNameX = (CAMERA_WIDTH - 32) - string_width(string_hash_to_newline(name));


postBlack = instance_create(0, 0, AnimatedGameSign);
postBlack.sprite_index = ZoneTitleS2PixelSprite;
postBlack.depth = depth;
game_sign_add_moment(postBlack, yellowLayerWait, 0, 0, 0, CAMERA_WIDTH, CAMERA_HEIGHT, 0, c_black, 1);


postBlueLayer = instance_create(0, 0, AnimatedGameSign);
postBlueLayer.sprite_index = ZoneTitleS2PixelSprite;
postBlueLayer.depth = depth - 1;
game_sign_add_moment(postBlueLayer, blueLayerEnterDuration, 0, 0, 0, CAMERA_WIDTH, 0, 0, colorBlue, 1);
game_sign_add_moment(postBlueLayer, blueLayerExitDuration, blueLayerWait, 0, 0, CAMERA_WIDTH, CAMERA_HEIGHT, 0, colorBlue, 1);
game_sign_add_moment(postBlueLayer, 0, 0, 0, 0, CAMERA_WIDTH, 0, 0, colorBlue, 1);


postYellowLayer = instance_create(0, 0, AnimatedGameSign);
postYellowLayer.sprite_index = ZoneTitleS2PixelSprite;
postYellowLayer.depth = depth - 2;
game_sign_add_moment(postYellowLayer, yellowLayerEnterDuration, 0, CAMERA_WIDTH + (yellowLayerEnterSpeed * 4), CAMERA_HEIGHT - yellowLayerHeight, 0, yellowLayerHeight, 0, colorYellow, 1);
game_sign_add_moment(postYellowLayer, yellowLayerExitDuration, yellowLayerWait, 0, CAMERA_HEIGHT - yellowLayerHeight, CAMERA_WIDTH, yellowLayerHeight, 0, colorYellow, 1);
game_sign_add_moment(postYellowLayer, 0, 0, CAMERA_WIDTH, CAMERA_HEIGHT - yellowLayerHeight, 0, yellowLayerHeight, 0, colorYellow, 1);


postGameName = instance_create(0, 0, AnimatedGameSign);
postGameName.sprite_index = ZoneTitleS2GameNameSprite;
postGameName.depth = depth - 3;
game_sign_add_moment(postGameName, yellowLayerEnterDuration, 0, gameNameX + CAMERA_WIDTH + (yellowLayerEnterSpeed * 4), gameNameY, 1, 1, 0, c_white, 1);
game_sign_add_moment(postGameName, yellowLayerExitDuration, yellowLayerWait, gameNameX, gameNameY, 1, 1, 0, c_white, 1);
game_sign_add_moment(postGameName, 0, 0, gameNameX + CAMERA_WIDTH, gameNameY, 1, 1, 0, c_white, 1);


postRedLayer = instance_create(0, 0, AnimatedGameSign);
postRedLayer.sprite_index = ZoneTitleS2PixelSprite;
postRedLayer.depth = depth - 4;
game_sign_add_moment(postRedLayer, redLayerEnterDuration, 0, 0, 0, redLayerX - (CAMERA_WIDTH + (redLayerEnterSpeed * 4)), CAMERA_HEIGHT, 0, colorRed, 1);
game_sign_add_moment(postRedLayer, redLayerExitDuration, redLayerWait, 0, 0, redLayerX, CAMERA_HEIGHT, 0, colorRed, 1);
game_sign_add_moment(postRedLayer, 0, 0, 0, 0, 0, CAMERA_HEIGHT, 0, colorRed, 1);


postRedBorder = instance_create(0, 0, ZoneTitleRedFold);
postRedBorder.depth = depth - 5;
game_sign_add_moment(postRedBorder, redLayerEnterDuration, 0, redLayerX - (CAMERA_WIDTH + (redLayerEnterSpeed * 4)), 0, 1, 1, 0, c_white, 1);
game_sign_add_moment(postRedBorder, redLayerExitDuration, redLayerWait, redLayerX, 0, 1, 1, 0, c_white, 1);
game_sign_add_moment(postRedBorder, 0, 0, 0, 0, 1, 1, 0, c_white, 1);


postLabelName = instance_create(0, 0, AnimatedLabeledGameSign);
postLabelName.label = name;
postLabelName.font = global.GaslightFont;
postLabelName.depth = depth - 6;
game_sign_add_moment(postLabelName, labelEnterDuration, labelWait1, labelNameX + (CAMERA_WIDTH - 32), labelNameY, 1, 1, 0, c_white, 1);
game_sign_add_moment(postLabelName, labelExitDuration, labelWait2, labelNameX, labelNameY, 1, 1, 0, c_white, 1);
game_sign_add_moment(postLabelName, 0, 0, labelNameX + (CAMERA_WIDTH - 32), labelNameY, 1, 1, 0, c_white, 1);


postLabelNameShadow = instance_create(0, 0, AnimatedLabeledGameSign);
postLabelNameShadow.label = postLabelName.label;
postLabelNameShadow.font = postLabelName.font;
postLabelNameShadow.depth = postLabelName.depth + 1;
game_sign_add_moment(postLabelNameShadow, labelEnterDuration, labelWait1, labelNameX + (CAMERA_WIDTH - 32) + labelShadowOx, labelNameY + labelShadowOy, 1, 1, 0, c_black, 1);
game_sign_add_moment(postLabelNameShadow, labelExitDuration, labelWait2, labelNameX + labelShadowOx, labelNameY + labelShadowOy, 1, 1, 0, c_black, 1);
game_sign_add_moment(postLabelNameShadow, 0, 0, labelNameX + (CAMERA_WIDTH - 32) + labelShadowOx, labelNameY + labelShadowOy, 1, 1, 0, c_black, 1);


postLabelZoneWord = instance_create(0, 0, AnimatedLabeledGameSign);
postLabelZoneWord.label = "ZONE";
postLabelZoneWord.font = global.GaslightFont;
postLabelZoneWord.depth = depth - 7;
game_sign_add_moment(postLabelZoneWord, labelEnterDuration, labelWait1, labelZoneWordX - (CAMERA_WIDTH - 32), labelZoneWordY, 1, 1, 0, c_white, 1);
game_sign_add_moment(postLabelZoneWord, labelExitDuration, labelWait2, labelZoneWordX, labelZoneWordY, 1, 1, 0, c_white, 1);
game_sign_add_moment(postLabelZoneWord, 0, 0, labelZoneWordX - (CAMERA_WIDTH - 32), labelZoneWordY, 1, 1, 0, c_white, 1);


postLabelZoneWordShadow = instance_create(0, 0, AnimatedLabeledGameSign);
postLabelZoneWordShadow.label = postLabelZoneWord.label;
postLabelZoneWordShadow.font = postLabelZoneWord.font;
postLabelZoneWordShadow.depth = depth - 7;
game_sign_add_moment(postLabelZoneWordShadow, labelEnterDuration, labelWait1, labelZoneWordX - (CAMERA_WIDTH - 32) + labelShadowOx, labelZoneWordY + labelShadowOy, 1, 1, 0, c_black, 1);
game_sign_add_moment(postLabelZoneWordShadow, labelExitDuration, labelWait2, labelZoneWordX + labelShadowOx, labelZoneWordY + labelShadowOy, 1, 1, 0, c_black, 1);
game_sign_add_moment(postLabelZoneWordShadow, 0, 0, labelZoneWordX - (CAMERA_WIDTH - 32) + labelShadowOx, labelZoneWordY + labelShadowOy, 1, 1, 0, c_black, 1);


postLabelAct = instance_create(0, 0, AnimatedGameSign);
postLabelAct.sprite_index = ZoneTitleS2ActSprite;
postLabelAct.image_index = act - 1;
postLabelAct.depth = depth - 8;
game_sign_add_moment(postLabelAct, labelEnterDuration, labelWait1, labelActX - (CAMERA_WIDTH - 32), labelActY, 1, 1, 0, c_white, 1);
game_sign_add_moment(postLabelAct, labelExitDuration, labelWait2, labelActX, labelActY, 1, 1, 0, c_white, 1);
game_sign_add_moment(postLabelAct, 0, 0, labelActX - (CAMERA_WIDTH - 32), labelActY, 1, 1, 0, c_white, 1);

