/// @description Horizontal split, then vertical split the bottom half
var half_width = width * 0.5;
var half_height = height * 0.5;
view_set_visible(0, true);
view_set_wport(0, width);
view_set_hport(0, half_height);
for (vind = 1; vind < 3; ++vind)
{
    view_set_visible(vind, true);
    view_set_xport(vind, (vind - 1) * half_width);
    view_set_yport(vind, half_height);
    view_set_wport(vind, half_width);
    view_set_hport(vind, half_height);
}