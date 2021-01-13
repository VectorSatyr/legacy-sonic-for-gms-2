/// @description  Initialize
event_inherited();
reaction_script = player_react_to_crumbling_floor;
bottom_solid = false;
normal = 0;

perp = noone;

time_to_crumble = 0;

total_collumns = sprite_width div 16;
total_rows = sprite_height div 16;
timed_delay_per_collumn = 2;
timed_delay_per_row = 5;

