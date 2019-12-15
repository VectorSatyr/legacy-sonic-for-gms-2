/// @description Cancels a character's super form
/// @param {Real} character player character instance index
var character = argument0;

with (character) {
    if (superform) {
        superform = false;
        superform_time = 0;
        game_pc_refresh_physics(self);
        with (shield) {
            visible = true;
        }
        with (shader) {
            event_user(1); // power down
        }
        switch (object_index) {
        case Sonic:
            game_pc_define_animation(self, "stand", SonicStanceAnim);
            game_pc_define_animation(self, "walk", SonicWalkAnim);
            game_pc_define_animation(self, "run", SonicRunAnim);
            game_pc_define_animation(self, "push", SonicPushAnim);
            game_pc_define_animation(self, "crouch", SonicCrouchAnim);
            game_pc_define_animation(self, "teeter_front", SonicTeeterFrontAnim);
            game_pc_define_animation(self, "teeter_back", SonicTeeterBackAnim);
            if (state == player_is_super_sonic_flying) {
                game_pc_perform(self, player_is_falling);
                game_pc_animate(self, "walk", true);
                timeline_speed = 1 / 8;
            } else {
                game_pc_animate(self, current_animation, true);
            }
            break;
        }
    }
}
