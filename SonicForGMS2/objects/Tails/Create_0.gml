/// @description Initialize
event_inherited();

// physics
flight_force = flight_base_force;

// animations
game_pc_define_animation(self, "stand", TailsStanceAnim);
game_pc_define_animation(self, "stance_loop", TailsStanceLoopAnim);
game_pc_define_animation(self, "walk", TailsWalkAnim);
game_pc_define_animation(self, "run", TailsRunAnim);
game_pc_define_animation(self, "sprint", TailsSprintAnim);
game_pc_define_animation(self, "brake", TailsBrakeAnim);
game_pc_define_animation(self, "spin", TailsSpinAnim);
game_pc_define_animation(self, "push", TailsPushAnim);
game_pc_define_animation(self, "rise", TailsRisingAnim);
game_pc_define_animation(self, "flip", TailsFlipAnim);
game_pc_define_animation(self, "breathe", TailsBreatheAnim);
game_pc_define_animation(self, "look_up", TailsLookAnim);
game_pc_define_animation(self, "crouch", TailsCrouchAnim);
game_pc_define_animation(self, "spindash", TailsSpinDashAnim);
game_pc_define_animation(self, "flight", TailsFlightAnim);
game_pc_define_animation(self, "flight_fall", TailsFlightFallAnim);
game_pc_define_animation(self, "swim", TailsSwimAnim);
game_pc_define_animation(self, "swim_fall", TailsSwimFallAnim);
game_pc_define_animation(self, "hurt", TailsStunnedAnim);
game_pc_define_animation(self, "dead", TailsDeathAnim);
game_pc_define_animation(self, "drown", TailsDrownAnim);
game_pc_define_animation(self, "transform", TailsTransformAnim);
game_pc_define_animation(self, "teeter_front", TailsTeeterAnim);
game_pc_define_animation(self, "teeter_back", TailsTeeterAnim);

// shaders
shader.normal_color[0] = make_color_rgb(148, 0, 0);
shader.normal_color[1] = make_color_rgb(189, 106, 74);
shader.normal_color[2] = make_color_rgb(255, 148, 0);
shader.normal_color[3] = make_color_rgb(255, 189, 0);
shader.transform_color[0] = make_color_rgb(148, 0, 0);
shader.transform_color[1] = make_color_rgb(231, 132, 66);
shader.transform_color[2] = make_color_rgb(231, 198, 132);
shader.transform_color[3] = make_color_rgb(231, 231, 165);
shader.super_color = shader.normal_color;
shader.super_fade_color = shader.transform_color;
shader.input_color = shader.normal_color;

// other values
flight_time = -1;
flight_soundid = -1;

// tails' tails
tails = instance_create_depth(x, y, depth + 1, TailsTails);
tails.source = self;