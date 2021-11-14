/// @description Animate
event_inherited();
touch_right = false;
touch_up = false;
touch_left = false;
touch_down = false;
if (touched) {
	var len = point_distance(x, y, posX, posY);
	if (len >= deadzone) {
		var dir = point_direction(x, y, posX, posY);
		if (abs(angle_difference(dir, 0)) <= touch_angle) {
			touch_right = true;
		}
		if (abs(angle_difference(dir, 90)) <= touch_angle) {
			touch_up = true;
		}
		if (abs(angle_difference(dir, 180)) <= touch_angle) {
			touch_left = true;
		}
		if (abs(angle_difference(dir, 270)) <= touch_angle) {
			touch_down = true;
		}
	}
}