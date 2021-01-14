/// @description Organize
if (game_is_running())
{
	with (Deactivable)
	{
	    if (not constant)
		{
	        instance_deactivate_object(id);
	    }
	}

	with (Camera)
	{
	    var vx, vy, vw, vh;
	    for (var vind = 0; vind < MAX_VIEW_COUNT; ++vind)
		{
	        if (caller[vind] != noone)
			{
				var cam = view_get_camera(vind);
	            vx = camera_get_view_x(cam) - other.camera_border;
	            vy = camera_get_view_y(cam) - other.camera_border;
	            vw = camera_get_view_width(cam) + (other.camera_border * 2);
	            vh = camera_get_view_height(cam) + (other.camera_border * 2);
	            instance_activate_region(vx, vy, vw, vh, true);
	        }
	    }
	}

	with (PlayableCharacter)
	{
	    if (not instance_on_screen(id))
		{
	        if ((mask_direction mod 180) != 0)
			{
	            instance_activate_region(x_int - (y_radius + y_snap_distance), y_int - x_wall_radius, (y_radius + y_snap_distance) * 2, x_wall_radius * 2, true);
	        }
			else
			{
	            instance_activate_region(x_int - x_wall_radius, y_int - (y_radius + y_snap_distance), x_wall_radius * 2, (y_radius + y_snap_distance) * 2, true);
	        }
	    }
	}

	with (Region)
	{
	    for (var n = 0; n < ds_list_size(instances); ++n)
		{
	        instance_activate_object(instances[| n]);
	    }
	}

    alarm[0] = throttle_speed;
}