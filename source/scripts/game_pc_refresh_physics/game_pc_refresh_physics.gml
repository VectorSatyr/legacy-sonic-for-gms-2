/// @description Resets all physics values back to default, applying modifiers when applicable.
/// @param {Real} character player character instance index
function game_pc_refresh_physics(argument0) {
	var character = argument0;

	with (character)
	{
		speed_cap = 6;
		land_acceleration = 0.046875;
		land_deceleration = 0.5;
		land_friction = 0.046875;
		slope_friction = 0.125;
		roll_deceleration = 0.125;
		roll_friction = 0.0234375;
		roll_slope_friction_up = 0.078125;
		roll_slope_friction_down = 0.3125;

		air_acceleration = 0.09375;
		air_friction = 0.96875;
		jump_force = 6.5;
		jump_release_force = 4;
		gravity_speed = 0.21875;
		gravity_recoil_speed = 0.1875;

		spindash_max_charge = 8;

		switch (object_index)
		{
		case Sonic:
			aqua_bound_force = 8;
			aqua_bounce_force = 7.5;
			thunder_jump_force = 5.5;
			flame_dash_speed = 8;
			if (superform)
			{
				speed_cap = 10;
				land_acceleration *= 4;
				land_deceleration *= 2;
				air_acceleration *= 4;
				jump_force = 8;
				spindash_max_charge = 14;
				if (underwater)
				{
					jump_force = 3.5;
					jump_release_force *= 0.5;
				}
			}
			break;
	
		case Tails:
			flight_base_force = 0.03125;
			flight_ascend_force = 0.125;
			flight_threshold = -1;
			if (superform)
			{
				speed_cap = 8;
				land_acceleration *= 2;
				land_deceleration *= 1.5;
				air_acceleration *= 2;
				spindash_max_charge = 14;
			}
			break;
	
		case Knuckles:
			jump_force = 5.5;
			glide_acceleration = 0.015625;
			glide_slide_friction = 0.125;
			climb_speed = 1;
			if (superform)
			{
				speed_cap = 8;
				land_acceleration *= 2;
				land_deceleration *= 1.5;
				air_acceleration *= 2;
				spindash_max_charge = 14;
				glide_acceleration *= 3;
				climb_speed *= 2;
			}
			break;
		}

		if (superspeed_time > 0 and not superform)
		{
			speed_cap *= 2;
			land_acceleration *= 2;
			land_friction *= 2;
			roll_friction *= 2;
			air_acceleration *= 2;
		}
	
		if (underwater)
		{
			speed_cap *= 0.5;
			land_acceleration *= 0.5;
			land_deceleration *= 0.5;
			if (not superform) land_friction *= 0.5;
			roll_friction *= 0.5;
			air_acceleration *= 0.5;
			if (not superform)
			{
				jump_force -= 3;
				jump_release_force *= 0.5;
			}
			gravity_speed = 0.0625;
			gravity_recoil_speed = gravity_speed;
		}
	}


}
