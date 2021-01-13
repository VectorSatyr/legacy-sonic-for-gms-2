/// @description Initialize
event_inherited();
image_speed = 0;

var game_text_x = (CAMERA_WIDTH * 0.5) - 40;
var game_text_y = CAMERA_HEIGHT * 0.5
var over_text_x = (CAMERA_WIDTH * 0.5) + 40;
var over_text_y = game_text_y;

var text_screen_ox = 256 + (CAMERA_WIDTH * 0.5);
var text_enter_speed = 16;
var text_enter_duration = text_screen_ox / text_enter_speed;

post_game = instance_create_layer(game_text_x - text_screen_ox, game_text_y, "gui", AnimatedGameSign);
post_game.sprite_index = GameOverGameTextSprite;
post_game.destroy = false;
game_sign_add_moment(post_game, text_enter_duration, 0, game_text_x - text_screen_ox, game_text_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
game_sign_add_moment(post_game, 0, 0, game_text_x, game_text_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

post_over = instance_create_layer(over_text_x + text_screen_ox, over_text_y, "gui", AnimatedGameSign);
post_over.sprite_index = GameOverOverTextSprite;
post_over.destroy = false;
game_sign_add_moment(post_over, text_enter_duration, 0, over_text_x + text_screen_ox, over_text_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
game_sign_add_moment(post_over, 0, 0, over_text_x, over_text_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

timer = text_enter_duration + 660;

game_audio_enqueue_music(GameOverMusic);

with (ZoneTimeLimit)
{
	enabled = false;
}