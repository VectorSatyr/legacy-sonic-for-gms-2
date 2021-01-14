/// @description Triggers a character's super form.
/// @param {Real} character player character instance index
function game_pc_become_super(argument0) {
	var character = argument0;

	with (character)
	{
		if (not superform)
		{
		    superform = true;
		    superform_time = room_speed;
		    game_pc_refresh_physics(id);
		    switch (object_index)
			{
		    case Sonic:
		        game_pc_define_animation(id, "stand", SuperSonicStanceAnim);
		        game_pc_define_animation(id, "walk", SuperSonicWalkAnim);
		        game_pc_define_animation(id, "run", SuperSonicRunAnim);
		        game_pc_define_animation(id, "push", SuperSonicPushAnim);
		        game_pc_define_animation(id, "crouch", SuperSonicCrouchAnim);
		        game_pc_define_animation(id, "teeter_front", SuperSonicTeeterAnim);
		        game_pc_define_animation(id, "teeter_back", SuperSonicTeeterAnim);
		        break;
		    }
		}
	}


}
