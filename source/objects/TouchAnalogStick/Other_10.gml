/// @description Register
var len = point_distance(x, y, posX, posY);
if (len >= deadzone) {
	var dir = point_direction(x, y, posX, posY);
	if (abs(angle_difference(dir, 0)) <= touch_angle) {
		with (DeviceTouch) {
			ds_list_add(events, "right");
		}
	}
	if (abs(angle_difference(dir, 90)) <= touch_angle) {
		with (DeviceTouch) {
			ds_list_add(events, "up");
		}
	}
	if (abs(angle_difference(dir, 180)) <= touch_angle) {
		with (DeviceTouch) {
			ds_list_add(events, "left");
		}
	}
	if (abs(angle_difference(dir, 270)) <= touch_angle) {
		with (DeviceTouch) {
			ds_list_add(events, "down");
		}
	}
}