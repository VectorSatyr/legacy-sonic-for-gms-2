var phase = argument0;

switch (phase) {
case "start":
    spinning = false;

    y_speed = 0;

    on_the_ground = false;
    ground_id = noone;

    game_pc_redirect(self, gravity_direction);
    game_pc_align(self, gravity_direction);
    game_pc_lose_super(self);
    game_pc_refresh_physics(self);

    game_pc_animate(self, "drown");
    image_angle = gravity_direction;

    game_pc_camera_disconnect(self);

    if (owner.index == 0) { // player 1
        with (instance_create_layer(0, 0, "general", ZoneRestart)) {
            player = other.owner;
        }
    }
    break;
    
default:
    return player_is_defeated(phase);
}
