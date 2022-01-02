/// @description Render
if (timer > 0) {
	instance_perform_user_event(GlowingSpheresObjectShader, 0);
}
draw_self();
if (timer > 0) {
	instance_perform_user_event(GlowingSpheresObjectShader, 1);
}