/// @description Initialize
event_inherited();
timeline_set(self, GSSmallSphereAnim, 2);
constant = false;
reaction_script = player_react_to_glowing_spheres_prize_sphere;
used = false;
total_prizes = 4;
prize_type = array_create(total_prizes, ClearGumball);
prize_value = array_create(total_prizes, 0);