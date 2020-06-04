/// @description Initialize
event_inherited();
reaction_script = player_react_to_glowing_spheres_large_sphere;

force = 12;
rotation_speed = 6;
radius = 55; 
shift_speed = 1;

for (var n = 0; n < MAX_PLAYER_COUNT; ++n)
{
    angle[n] = 0;
    z_pos[n] = 0;
    z_depth[n] = 0;
}