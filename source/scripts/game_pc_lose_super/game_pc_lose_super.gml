/// @description Cancels a character's super form
/// @param {Real} character player character instance index
function game_pc_lose_super(argument0) {
	var character = argument0;

	with (character) {
	    if (superform) {
	        superform = false;
	        superform_time = 0;
	        game_pc_refresh_physics(id);
	        with (shield) {
	            visible = true;
	        }
	        with (shader) {
	            event_user(1); // power down
	        }
	        switch (object_index) {
	        case Sonic:
	            game_pc_define_animation(id, "stand", SonicStanceAnim);
	            game_pc_define_animation(id, "walk", SonicWalkAnim);
	            game_pc_define_animation(id, "run", SonicRunAnim);
	            game_pc_define_animation(id, "push", SonicPushAnim);
	            game_pc_define_animation(id, "crouch", SonicCrouchAnim);
	            game_pc_define_animation(id, "teeter_front", SonicTeeterFrontAnim);
	            game_pc_define_animation(id, "teeter_back", SonicTeeterBackAnim);
	            if (state == player_is_super_sonic_flying) {
	                game_pc_perform(id, player_is_falling);
	                game_pc_animate(id, "walk", true);
	                timeline_speed = 1 / 8;
	            } else {
	                game_pc_animate(id, current_animation, true);
	            }
	            break;
	        }
	    }
	}



}
