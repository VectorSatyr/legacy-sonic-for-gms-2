/// @description Triggers a character's super form.
/// @param {Real} character player character instance index
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
	        game_pc_define_animation(self, "stand", SuperSonicStanceAnim);
	        game_pc_define_animation(self, "walk", SuperSonicWalkAnim);
	        game_pc_define_animation(self, "run", SuperSonicRunAnim);
	        game_pc_define_animation(self, "push", SuperSonicPushAnim);
	        game_pc_define_animation(self, "crouch", SuperSonicCrouchAnim);
	        game_pc_define_animation(self, "teeter_front", SuperSonicTeeterAnim);
	        game_pc_define_animation(self, "teeter_back", SuperSonicTeeterAnim);
	        break;
	    }
	}
}