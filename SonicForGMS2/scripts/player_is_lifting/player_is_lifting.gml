var phase = argument0;

switch (phase) {
case "start":
    var sine = dsin(gravity_direction);
    var cosine = dcos(gravity_direction);

    game_pc_position(self, x + (cosine * 3 * facing_sign) + (sine * 8), y + (-sine * 3 * facing_sign) + (cosine * 8));

    y_speed = 0;

    game_pc_animate(self, "climb_lift");
    image_angle = gravity_direction;

    game_pc_camera_direct(self, game_pc_camera_state_aerial);
    break;

case "finish":
    break;

case "step":
    switch (timeline_position) {
    case 7:
        var sine = dsin(gravity_direction);
        var cosine = dcos(gravity_direction);
        game_pc_position(self, x + (cosine * 8 * facing_sign) - (sine * 10), y + (-sine * 8 * facing_sign) - (cosine * 10));
        break;

    case 13:
        var sine = dsin(gravity_direction);
        var cosine = dcos(gravity_direction);
        game_pc_position(self, x - (sine * 12), y - (cosine * 12));
        break;

    case 19:
        return game_pc_perform(self, player_is_standing);
        break;
    }
    break;
}

/*
// player_is_clambering(step)
var step = argument0;

var sine = dsin(angle);
var cosine = dcos(angle);

switch (step) {
case -1: // starting
    state = player_is_clambering;

    yspeed = 0;
    x += (cosine * 3 * facing) + (sine * 8);
    y += (-sine * 3 * facing) + (cosine * 8);

    timeline_speed = 1;
    animation_new = "climb_end";
    break;

default: // main
    switch (timeline_position) {
    case 8:
        x += (cosine * 8 * facing) - (sine * 10);
        y += (-sine * 8 * facing) - (cosine * 10);
        break;

    case 14:
        x -= (sine * 12);
        y -= (cosine * 12);
        break;

    case 20:
        return player_is_standing(-1);
        break;
    }
}
