/// @description  Setup

postBlack = instance_create_layer(0, 0, "gui", AnimatedGameSign);
postBlack.sprite_index = SolidPixelSprite;
game_sign_add_moment(postBlack, blackDuration, 0, 0, 0, CAMERA_WIDTH, CAMERA_HEIGHT, 0, c_black, 1);


postLabelName = instance_create_layer(0, 0, "screen", AnimatedLabeledGameSign);
postLabelName.label = labelText;
postLabelName.font = font;
game_sign_add_moment(postLabelName, labelEnterDuration, 0, labelNameX + CAMERA_WIDTH, labelNameY, 1, 1, 0, c_white, 1);
game_sign_add_moment(postLabelName, labelExitDuration, labelDuration, labelNameX, labelNameY, 1, 1, 0, c_white, 1);
game_sign_add_moment(postLabelName, 0, 0, labelNameX + CAMERA_WIDTH, labelNameY, 1, 1, 0, c_white, 1);


postLabelNameShadow = instance_create_layer(0, 0, "screen", AnimatedLabeledGameSign);
postLabelNameShadow.label = postLabelName.label;
postLabelNameShadow.font = postLabelName.font;
game_sign_add_moment(postLabelNameShadow, labelEnterDuration, 0, labelShadowX + CAMERA_WIDTH, labelShadowY, 1, 1, 0, c_black, 1);
game_sign_add_moment(postLabelNameShadow, labelExitDuration, labelDuration, labelShadowX, labelShadowY, 1, 1, 0, c_black, 1);
game_sign_add_moment(postLabelNameShadow, 0, 0, labelShadowX + CAMERA_WIDTH, labelShadowY, 1, 1, 0, c_black, 1);