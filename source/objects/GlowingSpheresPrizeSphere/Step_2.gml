/// @description Respawn off-screen
if (used and not instance_on_screen(id, CAMERA_HEIGHT))
{
	timeline_set(id, GSSmallSphereAnim, 2);
	sprite_index = GSSmallSphereSprite;
	reaction_script = player_react_to_glowing_spheres_prize_sphere;
	constant = false;
	used = false;
}