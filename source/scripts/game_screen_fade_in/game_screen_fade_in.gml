/// @description Fades in the game screen within the given number of frames using the given shader
/// @argument {real} shader screen shader to apply
/// @argument {real} steps total frames to fade
/// @returns {real} instance index of FadeIn
function game_screen_fade_in(argument0, argument1) {
	var shader = argument0;
	var steps = argument1;

	var fade = instance_create_layer(0, 0, "screen", FadeIn);
	fade.image_speed = 3.0 / steps;
	fade.shader = shader;

	return fade;



}
