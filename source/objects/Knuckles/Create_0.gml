/// @description Initalize
event_inherited();

// physics
glide_speed = 0;
glide_angle = 0;
glide_direction = 1;

// animations
game_pc_define_animation(id, "stand", KnucklesStanceAnim);
game_pc_define_animation(id, "walk", KnucklesWalkAnim);
game_pc_define_animation(id, "run", KnucklesRunAnim);
game_pc_define_animation(id, "brake", KnucklesBrakeAnim);
game_pc_define_animation(id, "spin", KnucklesSpinAnim);
game_pc_define_animation(id, "push", KnucklesPushAnim);
game_pc_define_animation(id, "rise", KnucklesRisingAnim);
game_pc_define_animation(id, "flip", KnucklesFlipAnim);
game_pc_define_animation(id, "breathe", KnucklesBreatheAnim);
game_pc_define_animation(id, "look_up", KnucklesLookAnim);
game_pc_define_animation(id, "crouch", KnucklesCrouchAnim);
game_pc_define_animation(id, "spindash", KnucklesSpinDashAnim);
game_pc_define_animation(id, "glide", KnucklesGlideAnim);
game_pc_define_animation(id, "glide_fall", KnucklesGlideFallAnim);
game_pc_define_animation(id, "glide_land", KnucklesGlideLandAnim);
game_pc_define_animation(id, "glide_slide", KnucklesGlideSlideAnim);
game_pc_define_animation(id, "glide_stand", KnucklesGlideRiseAnim);
game_pc_define_animation(id, "climb", KnucklesClimbAnim);
game_pc_define_animation(id, "climb_lift", KnucklesLiftAnim);
game_pc_define_animation(id, "hurt", KnucklesStunnedAnim);
game_pc_define_animation(id, "dead", KnucklesDeathAnim);
game_pc_define_animation(id, "drown", KnucklesDrownAnim);
game_pc_define_animation(id, "transform", KnucklesTransformAnim);
game_pc_define_animation(id, "teeter_front", KnucklesTeeterFrontAnim);
game_pc_define_animation(id, "teeter_back", KnucklesTeeterBackAnim);
game_pc_define_animation(id, "teeter_loop", KnucklesTeeterLoopAnim);

// shaders
shader.normal_color[0] = $6a4aff;
shader.normal_color[1] = $2000de;
shader.normal_color[2] = $20006a;
shader.transform_color[0] = $ffffff;
shader.transform_color[1] = $ffdcff;
shader.transform_color[2] = $deb6ff;
shader.super_color = shader.normal_color;
shader.super_fade_color = shader.transform_color;
shader.input_color = shader.normal_color;