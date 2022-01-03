/// @description Initialize
event_inherited();
constant = true;
indestructable = false;
destroyed = false;
invulnerable_time = 0;
life_count = 8;
bounce_force = 3;
stun = function ()
{
	invulnerable_time = 32;
};
destroy = function ()
{
	destroyed = true;
};
reaction_test = function (character)
{
	if (not destroyed) {
		with (character) {
			if (
				state == player_is_flying and 
				game_pc_upper_in_shape(id, other.id, y_radius)
			) {
				game_pc_react_to(id, other.id);
				break;
			}
			if (
				(spinning or state == player_is_gliding) and
				game_pc_in_shape(id, other.id, x_radius, y_radius)
			) {
				game_pc_react_to(id, other.id);
				break;
			}
			if (
				state != player_is_hurt and recovery_time <= 0 and 
				invincibility_time <= 0 and not superform and
				game_pc_in_shape(id, other.id, x_radius, y_radius)
			) {
				game_pc_damage(id, sign(x_int - other.x));
			}
		}
	}
};
reaction_on_enter = function (character)
{
	if (invulnerable_time <= 0) {
		with (character) {
			if (state == player_is_aqua_bouncing) {
				game_pc_perform(id, player_is_jumping);
				game_pc_play_sound(id, AquaBounceSound);
			}
			var bounce_direction = angle_wrap(
				round(
					point_direction(other.x, other.y, x_int, y_int)
				) - mask_direction
			);
			x_speed = dcos(bounce_direction) * other.bounce_force;
			y_speed = -dsin(bounce_direction) * other.bounce_force;
			if (state == player_is_gliding) {
				game_pc_perform(id, player_is_falling);
				game_pc_animate(id, "spin");
				spinning = true;
			}
		}
		if (life_count > 0 and not indestructable) {
			--life_count;
			if (life_count > 0) {
				game_pc_play_sound(character, BossHitSound);
				stun();
			} else {
				destroy();
			}
		}
	}
};