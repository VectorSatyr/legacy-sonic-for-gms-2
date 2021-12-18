/// @description Initialize
event_inherited();
reaction_test = function (character)
{
	with (character) {
		if (
			on_the_ground and other.y - other.yprevious == 0 and 
			game_pc_arms_in_shape(id, other.id, x_wall_radius)
		) {
	        var dist = game_pc_calc_wall_distance(
				id, other.id, x_wall_radius
			);
	        if (sign(x_speed) == sign(dist)) {
	            game_pc_react_to(id, other.id);
	            wall_id = other.id;
	            wall_sign = sign(dist);
	            var sine = dsin(mask_direction);
	            var cosine = dcos(mask_direction);
	            var ox = cosine * dist;
	            var oy = -sine * dist;
	            with (other) {
	                if (not place_meeting(x + ox, y + oy, Solid)) {
	                    x += ox;
	                    y += oy;
	                }
	            }
	            var new_distance = game_pc_calc_wall_distance(
					id, other.id, x_wall_radius
				);
	            game_pc_position(
					id, x - (cosine * new_distance), y + (sine * new_distance)
				);
	            x_speed = 0;
	        }
	    }
	}
};
reaction_on_enter = function (character)
{
	game_pc_perform(character, player_is_pushing);
};