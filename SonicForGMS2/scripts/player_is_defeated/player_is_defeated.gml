var phase = argument0;

switch (phase) {
case "start":
    spinning = false;
    underwater = false;

    y_speed = -7;

    on_the_ground = false;
    ground_id = noone;

    game_pc_redirect(self, gravity_direction);
    game_pc_align(self, gravity_direction);
    game_pc_lose_super(self);
    game_pc_refresh_physics(self);

    game_pc_animate(self, "dead");
    image_angle = gravity_direction;

    game_pc_camera_disconnect(self);

    if (owner.index == 0) { // player 1
        with (instance_create_layer(0, 0, "general", ZoneRestart)) {
            player = other.owner;
        }
    }
    break;

case "finish":
    break;

case "step":
    y += y_speed;
    y_int = floor(y);

    if (y_speed >= 0 and y_int >= bound_bottom + 48) {
        return game_pc_perform(self, -1);
    }

    y_speed += gravity_speed;
    break;
}
