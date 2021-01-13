/// @description Animate
if (enabled)
{
	if (touched)
	{
		image_alpha = max_alpha;
		duration = wait_to_fade;
	}
	else
	{
		if (duration > 0)
		{
			duration--;
		}
		else if (image_alpha != min_alpha)
		{
			image_alpha += min(fade_rate, abs(min_alpha - image_alpha)) * sign(min_alpha - image_alpha);
		}
	}
}
else
{
    if (image_alpha > 0)
	{
        image_alpha -= fade_rate;
    }
}