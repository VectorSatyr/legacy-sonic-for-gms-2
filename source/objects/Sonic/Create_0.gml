/// @description Initialize
event_inherited();

// physics
drop_dash_time = 0;

// animations
game_pc_define_animation(id, "stand", SonicStanceAnim);
game_pc_define_animation(id, "stance_loop", SonicStanceLoopAnim);
game_pc_define_animation(id, "walk", SonicWalkAnim);
game_pc_define_animation(id, "run", SonicRunAnim);
game_pc_define_animation(id, "brake", SonicBrakeAnim);
game_pc_define_animation(id, "spin", SonicSpinAnim);
game_pc_define_animation(id, "push", SonicPushAnim);
game_pc_define_animation(id, "rise", SonicRisingAnim);
game_pc_define_animation(id, "flip", SonicFlipAnim);
game_pc_define_animation(id, "breathe", SonicBreatheAnim);
game_pc_define_animation(id, "look_up", SonicLookAnim);
game_pc_define_animation(id, "crouch", SonicCrouchAnim);
game_pc_define_animation(id, "spindash", SonicSpinDashAnim);
game_pc_define_animation(id, "hurt", SonicStunnedAnim);
game_pc_define_animation(id, "dead", SonicDeathAnim);
game_pc_define_animation(id, "drown", SonicDrownAnim);
game_pc_define_animation(id, "transform", SonicTransformAnim);
game_pc_define_animation(id, "teeter_front", SonicTeeterFrontAnim);
game_pc_define_animation(id, "teeter_back", SonicTeeterBackAnim);

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