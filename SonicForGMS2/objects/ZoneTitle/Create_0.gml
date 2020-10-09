/// @description Initialize
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
yellowLayerColor = make_color_rgb(255, 253, 0);

redLayerEnterSpeed = 16;
redLayerExitSpeed = 32;
redLayerX = 112;
redLayerEnterDuration = (CAMERA_WIDTH / redLayerEnterSpeed) + 4;
redLayerExitDuration = redLayerX / redLayerExitSpeed;
redLayerColor = make_color_rgb(255, 0, 0);

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

characterNameSprite = ZoneTitleS2SonicNameSprite;
characterColor = make_color_rgb(27, 72, 221);

var player = game_player_find(0);
if (instance_exists(player))
{
	switch (player.character_id)
	{
    case Knuckles:
		characterNameSprite = ZoneTitleS2KnucklesNameSprite;
		characterColor = make_color_rgb(0, 145, 0);
		break;
    case Tails:
		characterNameSprite = ZoneTitleS2TailsNameSprite;
		characterColor = make_color_rgb(224, 144, 0);
		break;
    }
}

characterNameWidth = sprite_get_width(characterNameSprite);
characterNameX = CAMERA_WIDTH - characterNameWidth - 20;
characterNameY = CAMERA_HEIGHT - yellowLayerHeight + 8;