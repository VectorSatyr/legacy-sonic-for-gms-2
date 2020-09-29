/// @description  Attack
event_inherited();
with (chain_base) {
    x = other.x;
    y = other.y + other.chain_base_distance;
}

for (var n = 0; n < total_chain_links; ++n) {
    with (chain_link[n]) {
        x = other.x + dsin(other.chain_swing_direction) * (other.chain_link_distance[n]);
        y = other.y + other.chain_base_distance + dcos(other.chain_swing_direction) * (other.chain_link_distance[n]);
    }
}

with (chain_ball) {
    x = other.x + dsin(other.chain_swing_direction) * (other.chain_ball_distance);
    y = other.y + other.chain_base_distance + dcos(other.chain_swing_direction) * (other.chain_ball_distance);
}

if (game_is_running()) {
    switch (state) {
    case "appearing":
        y_speed = 1;
        if (base_y >= camera_top + 54) {
            state = "centering";
			timeline_set(flame, EggMobileFlameAnim);
			flame.visible = true;
        }
        break;
    
    case "centering":
        x_speed = -2;
        y_speed = -0.2;
        if (x <= camera_left + CAMERA_WIDTH * 0.5) {
            x_speed = 0;
            y_speed = 0;
        
            chain_base = instance_create_depth(x, y, depth + 2, GHZBossChainBase);
    
            for (var n = 0; n < total_chain_links; ++n) {
                chain_link[n] = instance_create_depth(x, y, depth + 2, GHZBossChainLink);
            }
    
            chain_ball = instance_create_depth(x, y, depth + 1, GHZBossChainBall);
    
            state = "deploying";

			timeline_set(eggman, EggMobileEggmanLaughAnim);
			timeline_set(flame, -1);
			flame.visible = false;
        }
        break;
    
    case "deploying":
        chain_base_distance = min(++chain_base_distance, chain_base_max_distance);
    
        for (var n = 0; n < total_chain_links; ++n) {
            chain_link_distance[n] = min(++chain_link_distance[n], chain_link_max_distance[n]);
        }
    
        chain_ball_distance = min(++chain_ball_distance, chain_ball_max_distance);
        if (chain_ball_distance >= chain_ball_max_distance) {
            x_speed = -move_speed;

            chain_ball.reaction_script = player_react_to_hazard;

            state = "swinging";

			timeline_set(eggman, EggMobileEggmanIdleAnim);
        }
        break;
    
    case "swinging":
        chain_direction += chain_swing_speed;
        chain_swing_direction = dsin(chain_direction) * 90;

        if (chain_swing_direction <= -90) {
            if (x < camera_left + move_limit_right) {
                x_speed = move_speed;
            }
        }
        else if (chain_swing_direction >= 90) {
            if (x > camera_left + move_limit_left) {
                x_speed = -move_speed;
            }
        }

        if (x < camera_left + move_limit_left) {
            x = camera_left + move_limit_left;
            x_speed = 0;
        }
        if (x > camera_left + move_limit_right) {
            x = camera_left + move_limit_right;
            x_speed = 0;
        }
		
		if (x_speed != 0) {
			timeline_set(flame, EggMobileFlameAnim, 1, true, false);
			flame.visible = true;
		} else {
			timeline_set(flame, -1);
			flame.visible = false;
		}
        break;
    
    case "destroyed":
        --destroy_time;
        if (destroy_time mod 6 == 0) {
            var ox = x + irandom_range(-24, 24);
            var oy = y + irandom_range(-24, 24);
			game_particles_spawn("heavy_explosion", ox, oy);
            game_audio_play_sound(BossExplosionSound);
        }
        if (destroy_time <= 0) {
            y_speed = 3.7;
            state = "rising";
			timeline_set(eggman, EggMobileEggmanDefeatedAnim);
        }
        break;
    
    case "rising":
        y_speed -= 0.13;
        if (y_speed < -2) {
            with (owner) {
                event_user(0);
                state = "finished";
            }
            state = "escaping";
			timeline_set(eggman, EggMobileEggmanPanicAnim);
			timeline_set(flame, EggMobileFlameBoostAnim, 1, false, true);
			flame.visible = true;
        }
        break;
    
    case "escaping":
        x_speed = 3;
        y_speed = -0.5;
        if (not instance_on_screen(self, 32)) {
            instance_destroy();
        }
        break;
    }
}