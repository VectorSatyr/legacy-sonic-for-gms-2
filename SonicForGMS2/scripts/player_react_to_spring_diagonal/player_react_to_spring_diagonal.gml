var ind = argument0;
var phase = argument1;

switch (phase) {
case "checking":
    if (game_pc_in_shape(self, ind, x_radius, y_radius)) {
        game_pc_react_to(self, ind);
    }
    break;

case "entering":
    game_pc_perform(self, player_is_falling);

    spinning = false;

    var rotation_offset = angle_wrap(45 + round_to(ind.image_angle, 90) - mask_direction);
    
    x_speed = -dsin(rotation_offset) * ind.force;
    y_speed = -dcos(rotation_offset) * ind.force;

    facing_sign = sign(x_speed);

    if (ind.special_animation) {
        game_pc_animate(self, "flip", true);
    } else {
        game_pc_animate(self, "rise");
    }

    image_angle = gravity_direction;

    instance_perform_user_event(ind, 0); // animate

    game_pc_play_sound(self, SpringSound);
    break;

case "exiting":
    break;
}
