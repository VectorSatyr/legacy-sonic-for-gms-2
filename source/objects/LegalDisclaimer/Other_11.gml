/// @description Dismiss
postBlack.destroy = true;
game_sign_add_moment(postBlack, fadeDuration, 0, 0, 0, CAMERA_WIDTH, CAMERA_HEIGHT, image_angle, fadeColor, fadeAlpha);
game_sign_add_moment(postBlack, 0, 0, 0, 0, CAMERA_WIDTH, CAMERA_HEIGHT, image_angle, fadeColor, 0);

postWarning.destroy = true;
game_sign_add_moment(postWarning, fadeDuration, 0, warningX, warningY, 1, 1, image_angle, fontColor, image_alpha);
game_sign_add_moment(postWarning, 0, 0, warningX, warningY, 1, 1, image_angle, fontColor, 0);

postStartText.destroy = true;
game_sign_add_moment(postStartText, fadeDuration, 0, startX, startY, 1, 1, image_angle, fontColor, image_alpha);
game_sign_add_moment(postStartText, 0, 0, startX, startY, 1, 1, image_angle, fontColor, 0);