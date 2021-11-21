/// @description Initialize
event_inherited();
image_index = 1;
reaction_test = function (character)
{
	with (character) {
		if (game_pc_in_shape(id, other.id, x_radius, y_radius)) {
			game_pc_react_to(id, other.id);
		}
	}
}
reaction_on_enter = function (character)
{
	with (character) {
		game_pc_perform(id, player_is_falling);
		spinning = false;
		var rotation_offset = angle_wrap(
			45 + round_to(other.image_angle, 90) - mask_direction
		);
		x_speed = -dsin(rotation_offset) * other.force;
		y_speed = -dcos(rotation_offset) * other.force;
		facing_sign = sign(x_speed);
		var flip = (other.special_animation == true);
		game_pc_animate(id, flip ? "flip" : "rise", flip);
		image_angle = gravity_direction;
		timeline_set(other.id, SpringAnim, 1, false);
		game_pc_play_sound(id, SpringSound);
	}
}