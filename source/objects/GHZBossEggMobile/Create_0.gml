/// @description Initialize
event_inherited();
timeline_set(eggman, EggMobileEggmanIdleAnim);
owner = noone;
state = "appearing";
camera_left = 0;
camera_top = 0;
move_speed = 2;
move_limit_left = 128;
move_limit_right = CAMERA_WIDTH - 128;
destroy_time = 170;
chain_swing_direction = 0;
chain_swing_speed = 1.2;
chain_direction = 0;
chain_base = noone;
chain_base_max_distance = 40;
chain_base_distance = 0;
total_chain_links = 4;
chain_link_separation = 16;
for (var n = 0; n < total_chain_links; ++n) {
	chain_link[n] = noone;
	chain_link_max_distance[n] = ((n + 1) * chain_link_separation);
	chain_link_distance[n] = 0;
}
chain_ball = noone;
chain_ball_separation = 32;
var furthest = chain_link_max_distance[total_chain_links - 1];
chain_ball_max_distance = furthest + chain_ball_separation;
chain_ball_distance = 0;
stun = function ()
{
	invulnerable_time = 32;
	timeline_set(eggman, EggMobileEggmanStunnedAnim, 1, false);
};
destroy = function ()
{
	destroyed = true;
	state = "destroyed";
	x_speed = 0;
	y_speed = 0;
	instance_destroy(chain_base);
	for (var n = 0; n < total_chain_links; ++n) {
		instance_destroy(chain_link[n]);
	}
	with (chain_ball) {
		harmful = false;
		destroy_time = 110;
	}
	timeline_set(eggman, EggMobileEggmanLosingAnim);
	timeline_set(flame, -1);
	flame.visible = false;
};