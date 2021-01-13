/// @description Initialize
total_lines = 20;
scale_limit = 3;
water_scale_factor = 0.00625;

event_user(0); // water height

var back = OceanBack;
var width = sprite_get_width(back);
var height = sprite_get_height(back);

var sky_height = sprite_get_height(SkyBack);

line_height = height / total_lines;
vscroll = (room_height - (height + sky_height)) / (room_height - CAMERA_HEIGHT);
vpos = room_height - (room_height * vscroll);

// ocean
for (var n = 0; n < total_lines; ++n)
{
    line[n] = game_parallax_add_sprite_part(OceanBack, 0, 0, 0, n * line_height, width, line_height, 0, vpos + (n * line_height), true, false, 0.85, vscroll, 0, 0,  -(0.16 * n) mod (width * 0.5), 0);
    line[n].visible = false;
}

// sky
game_parallax_add_sprite(SkyBack, 0, 0, 0, vpos - 192, true, false, 0.9, vscroll);