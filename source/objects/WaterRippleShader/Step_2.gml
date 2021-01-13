/// @description Animate
event_inherited();
cycle_time = (game_clock_get_step() / room_speed) * cycle_speed;
for (var vind = 0; vind < MAX_VIEW_COUNT; ++vind)
{
    view_render[vind] = false;
    if (view_get_visible( vind ))
	{
        with (Water)
		{
            if (rectangle_in_view(bbox_left, bbox_top, bbox_right, bbox_bottom, vind))
			{
                other.view_render[vind] = true;
                break;
            }
        }
    }
}