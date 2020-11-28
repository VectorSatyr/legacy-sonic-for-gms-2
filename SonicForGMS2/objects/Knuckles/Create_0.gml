/// @description Initalize
event_inherited();

// physics
glide_speed = 0;
glide_angle = 0;
glide_direction = 1;

// animations
game_pc_define_animation(self, "stand", KnucklesStanceAnim);
game_pc_define_animation(self, "walk", KnucklesWalkAnim);
game_pc_define_animation(self, "run", KnucklesRunAnim);
game_pc_define_animation(self, "brake", KnucklesBrakeAnim);
game_pc_define_animation(self, "spin", KnucklesSpinAnim);
game_pc_define_animation(self, "push", KnucklesPushAnim);
game_pc_define_animation(self, "rise", KnucklesRisingAnim);
game_pc_define_animation(self, "flip", KnucklesFlipAnim);
game_pc_define_animation(self, "breathe", KnucklesBreatheAnim);
game_pc_define_animation(self, "look_up", KnucklesLookAnim);
game_pc_define_animation(self, "crouch", KnucklesCrouchAnim);
game_pc_define_animation(self, "spindash", KnucklesSpinDashAnim);
game_pc_define_animation(self, "glide", KnucklesGlideAnim);
game_pc_define_animation(self, "glide_fall", KnucklesGlideFallAnim);
game_pc_define_animation(self, "glide_land", KnucklesGlideLandAnim);
game_pc_define_animation(self, "glide_slide", KnucklesGlideSlideAnim);
game_pc_define_animation(self, "glide_stand", KnucklesGlideRiseAnim);
game_pc_define_animation(self, "climb", KnucklesClimbAnim);
game_pc_define_animation(self, "climb_lift", KnucklesLiftAnim);
game_pc_define_animation(self, "hurt", KnucklesStunnedAnim);
game_pc_define_animation(self, "dead", KnucklesDeathAnim);
game_pc_define_animation(self, "drown", KnucklesDrownAnim);
game_pc_define_animation(self, "transform", KnucklesTransformAnim);
game_pc_define_animation(self, "teeter_front", KnucklesTeeterFrontAnim);
game_pc_define_animation(self, "teeter_back", KnucklesTeeterBackAnim);
game_pc_define_animation(self, "teeter_loop", KnucklesTeeterLoopAnim);

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