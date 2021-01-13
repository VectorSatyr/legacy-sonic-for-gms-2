/// @description  Initialize
event_inherited();
index = 0;

current_duration = -1;
current_delay = -1;

moment_count = 0;
moment_duration = ds_list_create();
moment_delay = ds_list_create();
moment_x = ds_list_create();
moment_y = ds_list_create();
moment_xscale = ds_list_create();
moment_yscale = ds_list_create();
moment_angle = ds_list_create();
moment_blend = ds_list_create();
moment_alpha = ds_list_create();

inc_x = 0;
inc_y = 0;
inc_xscale = 0;
inc_yscale = 0;
inc_angle = 0;
inc_blend = 0;
inc_alpha = 0;

blend_color = image_blend;
blend_amount = 0;

destroy = true;
paused = false;

