/// @description  Respawn off-screen
if (not instance_on_screen(self, CAMERA_HEIGHT)) {
	timeline_set(self, GSSmallSphereAnim, 2, true, true);
	sprite_index = GSSmallSphereSprite;
	reaction_script = player_react_to_glowing_spheres_prize_sphere;
	used = false;
}