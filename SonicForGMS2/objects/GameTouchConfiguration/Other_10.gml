/// @description Setup
if (enabled)
{
	instance_create_layer((CAMERA_WIDTH * 2) - 168, 16, "touch", TouchPauseButton);
	instance_create_layer((CAMERA_WIDTH * 2) - 112, (CAMERA_HEIGHT * 2) - 104, "touch", TouchButton);
	instance_create_layer(112, (CAMERA_HEIGHT * 2) - 112, "touch", TouchAnalogStick);
	event_user(1); // refresh
}