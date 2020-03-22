var ind = argument0;
var phase = argument1;

switch (phase) {
case "checking":
    if (not ind.destroyed) {
        if (state == player_is_flying and game_pc_upper_in_shape(self, ind, y_radius)) {
            game_pc_react_to(self, ind);
            break;
        }
        if ((spinning or state == player_is_gliding) and
            game_pc_in_shape(self, ind, x_radius, y_radius)) {
            game_pc_react_to(self, ind);
            break;
        }
        if (state != player_is_hurt and recovery_time <= 0 and invincibility_time <= 0 and not superform and
            game_pc_in_shape(self, ind, x_radius, y_radius)) {
            game_pc_damage(self, sign(x_int - ind.x));
        }
    }
    break;

case "entering":
    if (ind.invulnerable_time <= 0) {
        if (state == player_is_aqua_bouncing) {
            game_pc_perform(self, player_is_jumping);
            game_pc_play_sound(self, AquaBounceSound);
        }

        var bounce_direction = angle_wrap(round(point_direction(ind.x, ind.y, x_int, y_int)) - mask_direction);
    
        x_speed = dcos(bounce_direction) * ind.bounce_force;
        y_speed = -dsin(bounce_direction) * ind.bounce_force;
        
        if (state == player_is_gliding) {
            game_pc_perform(self, player_is_falling);
            game_pc_animate(self, "spin");
            spinning = true;
        }

        if (ind.life_count > 0 and not ind.indestructable) {
            --ind.life_count;
            if (ind.life_count > 0) {
                game_pc_play_sound(self, BossHitSound);
                instance_perform_user_event(ind, 0);
            } else {
                instance_perform_user_event(ind, 1);
            }
        }
    }
    break;

case "exiting":
    break;
}
