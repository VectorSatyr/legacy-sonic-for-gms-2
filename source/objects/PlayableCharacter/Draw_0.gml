/// @description Draw
if (sprite_index > -1)
{
    var angle = image_angle;
    var blend = image_blend;
    var alpha = image_alpha;

    if (angle mod image_angle_resolution != 0)
	{
        angle = round_to(angle, image_angle_resolution);
    }
    if (recovery_time > 0)
	{
        alpha -= ((recovery_time div 4) mod 2);
    }

	instance_perform_user_event(shader, 2);
    draw_sprite_ext(sprite_index, image_index, x_int, y_int, image_xscale * facing_sign, image_yscale, angle, blend, alpha);
	instance_perform_user_event(shader, 3);
}