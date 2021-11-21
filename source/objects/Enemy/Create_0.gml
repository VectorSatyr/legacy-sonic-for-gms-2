/// @description Initialize
event_inherited();
indestructable = false;
small_animals = ds_list_create();
release = function ()
{
	var total = ds_list_size(small_animals);
	if (total > 0) {
	    instance_create_layer(
			x, y, "objects", small_animals[| irandom(total - 1)]
		);
	}
};
reaction_test = function (character)
{
	with (character) {
		if (
			(
				state == player_is_flying and 
				game_pc_upper_in_shape(id, other.id, y_radius)
			) or (
				(
					spinning or superform or invincibility_time > 0 or
					state == player_is_gliding or 
					state == player_is_glide_sliding
				) and game_pc_in_shape(id, other.id, x_radius, y_radius)
			)
		) {
		    game_pc_react_to(id, other.id);
		} else if (
			state != player_is_hurt and recovery_time <= 0 and 
		    invincibility_time <= 0 and not superform and
		    game_pc_in_shape(id, other.id, x_radius, y_radius)
		) {
		    game_pc_damage(id, sign(x_int - other.x));
		}
	}
};
reaction_on_enter = function (character)
{
	with (character) {
		if (not other.indestructable) {
	        if (
				not on_the_ground and (
					spinning or state == player_is_gliding
				)
			) {
	            if (
					y_speed < 0 and game_pc_upper_in_shape(
						id, other.id, y_radius
					)
				) {
	                y_speed -= sign(y_speed);
	            } else if (
					y_speed >= 0 and game_pc_lower_in_shape(
						id, other.id, y_radius
					)
				) {
	                y_speed = -y_speed;
	                if (state == player_is_aqua_bouncing) {
	                    game_pc_perform(id, player_is_jumping);
	                    game_pc_play_sound(id, AquaBounceSound);
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
	        game_pc_play_sound(id, PopSound);
			game_particles_spawn("explosion", other.x, other.y);
			var popup = instance_create_layer(
				other.x, other.y, "effects", ScorePopup
			);
			popup.image_index = (bonus >= 200) ? 2 : 1;
			other.release();
	        instance_destroy(other.id);
	    }
	}
};