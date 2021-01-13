/// @description Post
postBlack = instance_create_depth(0, 0, depth, AnimatedGameSign);
postBlack.sprite_index = SolidPixelSprite;
postBlack.destroy = false;
game_sign_add_moment(postBlack, fadeDuration, 0, 0, 0, CAMERA_WIDTH, CAMERA_HEIGHT, image_angle, fadeColor, 0);
game_sign_add_moment(postBlack, 0, 0, 0, 0, CAMERA_WIDTH, CAMERA_HEIGHT, image_angle, fadeColor, fadeAlpha);

postWarning = instance_create_depth(warningX, warningY, depth - 1, AnimatedLabeledGameSign);
postWarning.label = warningText;
postWarning.font = font;
postWarning.halign = fa_center;
postWarning.valign = fa_middle;
postWarning.separation = 8;
postWarning.width = CAMERA_WIDTH * 0.875;
postWarning.destroy = false;
game_sign_add_moment(postWarning, fadeDuration, 0, warningX, warningY, 1, 1, image_angle, fontColor, 0);
game_sign_add_moment(postWarning, 0, 0, warningX, warningY, 1, 1, image_angle, fontColor, image_alpha);

postStartText = instance_create_depth(startX, startY, depth - 1, AnimatedLabeledGameSign);
postStartText.label = startText;
postStartText.font = font;
postStartText.halign = fa_center;
postStartText.valign = fa_middle;
postStartText.destroy = false;
game_sign_add_moment(postStartText, fadeDuration, fadeDuration + 1, startX, startY, 1, 1, image_angle, fontColor, 0);
game_sign_add_moment(postStartText, 0, 0, startX, startY, 1, 1, image_angle, fontColor, image_alpha);