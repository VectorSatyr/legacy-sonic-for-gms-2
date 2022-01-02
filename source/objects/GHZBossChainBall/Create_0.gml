/// @description Initialize
event_inherited();
image_speed = 0;
harmful = false;
destroy_time = 0;
reaction_test = function (character)
{
	if (harmful) {
		with (character) {
			if (
				state != player_is_hurt and recovery_time <= 0 and 
				invincibility_time <= 0 and not superform and 
				game_pc_in_shape(id, other.id, x_radius, y_radius)
			) {
				game_pc_react_to(id, other.id);
			}
		}
	}
};
reaction_on_enter = function (character)
{
	with (character) {
		game_pc_damage(id, sign(x_int - other.x));
	}
};