/// @description Initialize
event_inherited();

// physics
drop_dash_time = 0;

// animations
game_pc_define_animation(self, "stand", SonicStanceAnim);
game_pc_define_animation(self, "stance_loop", SonicStanceLoopAnim);
game_pc_define_animation(self, "walk", SonicWalkAnim);
game_pc_define_animation(self, "run", SonicRunAnim);
game_pc_define_animation(self, "brake", SonicBrakeAnim);
game_pc_define_animation(self, "spin", SonicSpinAnim);
game_pc_define_animation(self, "push", SonicPushAnim);
game_pc_define_animation(self, "rise", SonicRisingAnim);
game_pc_define_animation(self, "flip", SonicFlipAnim);
game_pc_define_animation(self, "breathe", SonicBreatheAnim);
game_pc_define_animation(self, "look_up", SonicLookAnim);
game_pc_define_animation(self, "crouch", SonicCrouchAnim);
game_pc_define_animation(self, "spindash", SonicSpinDashAnim);
game_pc_define_animation(self, "hurt", SonicStunnedAnim);
game_pc_define_animation(self, "dead", SonicDeathAnim);
game_pc_define_animation(self, "drown", SonicDrownAnim);
game_pc_define_animation(self, "transform", SonicTransformAnim);
game_pc_define_animation(self, "teeter_front", SonicTeeterFrontAnim);
game_pc_define_animation(self, "teeter_back", SonicTeeterBackAnim);

// shaders
shader.normal_color[0] = make_color_rgb(106, 106, 255);
shader.normal_color[1] = make_color_rgb(74, 74, 255);
shader.normal_color[2] = make_color_rgb(32, 74, 222);
shader.normal_color[3] = make_color_rgb(32, 32, 189);
shader.transform_color[0] = $e0e0e0;
shader.transform_color[1] = $e0e0e0;
shader.transform_color[2] = $a0e0e0;
shader.transform_color[3] = $40e0e0;
shader.super_color[0] = $c0e0e0;
shader.super_color[1] = $80e0e0;
shader.super_color[2] = $40e0e0;
shader.super_color[3] = $00e0e0;
shader.super_fade_color[0] = $e0e0e0;
shader.super_fade_color[1] = $e0e0e0;
shader.super_fade_color[2] = $e0e0e0;
shader.super_fade_color[3] = $80e0e0;
shader.input_color = shader.normal_color;