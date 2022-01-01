/// @description Initialize
event_inherited();
constant = true;
collectable = false;
value = 0;
y_speed = 0;
y_max_speed = 16;
gravity_force = -0.02;
reaction_test = function (character)
{
	if (collectable) {
		with (character) {
			if (game_pc_in_shape(id, other.id, x_radius, y_radius)) {
				game_pc_react_to(id, other.id);
			}
		}
	}
};