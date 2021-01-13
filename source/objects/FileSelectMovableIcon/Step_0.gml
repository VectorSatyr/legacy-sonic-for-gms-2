/// @description Move
if (game_is_running())
{
	x += xspeed;
	if (target != noone)
	{
		if (x == target.x or sign(x - target.x) == sign(xspeed))
		{
			x = target.x;
			xspeed = 0;
			target = noone;
		}
	}
}