/// @description Respawn off-screen
if (used and not instance_on_screen(id, CAMERA_HEIGHT)) {
	visible = true;
	constant = false;
	used = false;
}