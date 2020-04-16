/// @description  Initialize
event_inherited();

reaction_script = player_react_to_glowing_spheres_flipper;
normal = angle_wrap(22.5 * sign(image_xscale));
bottom_solid = false;

force = 12;
x_friction = 0.25;