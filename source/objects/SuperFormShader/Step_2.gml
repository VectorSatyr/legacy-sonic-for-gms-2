/// @description Animate
event_inherited();
if (game_is_running())
{
    switch (state)
	{
    case "rising":
        blend_offset = min(blend_offset + blend_speed, 1);
        blend_ratio = blend_offset;
        for (var n = 0; n < total_colors; ++n)
		{
            output_color[n] = merge_color(normal_color[n], transform_color[n], blend_ratio);
        }
        if (blend_ratio == 1)
		{
            state = "pulsating";
        }
        break;
    
    case "pulsating":
        blend_offset += blend_pulse_speed;
        blend_ratio = 0.5 + (sin(blend_offset) * 0.5);
        for (var n = 0; n < total_colors; ++n)
		{
            output_color[n] = merge_color(super_color[n], super_fade_color[n], blend_ratio);
        }
        break;
    
    case "fading":
        blend_offset = min(blend_offset + blend_speed, 1);
        blend_ratio = blend_offset;
        for (var n = 0; n < total_colors; ++n)
		{
            output_color[n] = merge_color(transform_color[n], normal_color[n], blend_ratio);
        }
        if (blend_ratio == 1)
		{
            state = "normal";
            visible = false;
        }
        break;
    }
}