var ind = argument0;
var phase = argument1;

switch (phase) {
case "checking":
    if (state == player_is_flying and game_pc_upper_in_shape(self, ind, y_radius)) {
        game_pc_react_to(self, ind);
        break;
    }
    if ((spinning or superform or invincibility_time > 0 or
        state == player_is_gliding or state == player_is_glide_sliding) and
        game_pc_in_shape(self, ind, x_radius, y_radius)) {
        game_pc_react_to(self, ind);
        break;
    }
    if (state != player_is_hurt and recovery_time <= 0 and 
        invincibility_time <= 0 and not superform and
        game_pc_in_shape(self, ind, x_radius, y_radius)) {
        game_pc_damage(self, sign(x_int - ind.x));
    }
    break;

case "entering":
    if (not ind.indestructable) {
        if (not on_the_ground and (spinning or state == player_is_gliding)) {
            if (y_speed < 0 and game_pc_upper_in_shape(self, ind, y_radius)) {
                y_speed -= sign(y_speed);
            } else if (y_speed >= 0 and game_pc_lower_in_shape(self, ind, y_radius)) {
                y_speed = -y_speed;
                if (state == player_is_aqua_bouncing) {
                    game_pc_perform(self, player_is_jumping);
                    game_pc_play_sound(self, AquaBounceSound);
                }
            }
            ++chain_multiplier;
        }

        var bonus = 100;
        if (chain_multiplier > 15) {
            bonus = 10000;
        } else if (chain_multiplier > 3) {
            bonus = 1000;
        } else if (chain_multiplier > 2) {
            bonus = 500;
        } else if (chain_multiplier > 1) {
            bonus = 200;
        }

        game_player_change_score(owner, bonus);
        game_pc_play_sound(self, PopSound);
		game_particles_spawn("explosion", ind.x, ind.y);

        with (instance_create_layer(ind.x, ind.y, "effects", ScorePopup)) {
            if (bonus >= 200) {
                image_index = 2;
            } else {
                image_index = 1;
            }
        }

        instance_destroy(ind);
    }
    break;

case "exiting":
    break;
}
