/// @description Initialize
event_inherited();
timeline_set(id, GSSmallSphereAnim, 2);
constant = false;
used = false;
total_prizes = 4;
prize_type = array_create(total_prizes, ClearGumball);
prize_value = array_create(total_prizes, 0);
reaction_test = function (character)
{
	if (not used) {
		with (character) {
			if (game_pc_in_shape(id, other.id, x_radius, y_radius)) {
				game_pc_react_to(id, other.id);
			}
		}
	}
};
reaction_on_exit = function (character)
{
	with (character) {
		var roll = game_clock_get_step() mod 4;
		var gumball = instance_create_layer(
			other.x, other.y, other.layer, other.prize_type[roll]
		);
		gumball.value = other.prize_value[roll];
		game_pc_play_sound(id, GumballSound);
	}
	visible = false;
	constant = true;
	used = true;
};