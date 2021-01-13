/// @description Horizontal and vertical split into quarters
var half_width = width * 0.5;
var half_height = height * 0.5;
for (vind = 0; vind < 4; ++vind)
{
    view_set_visible(vind, true);
    view_set_xport(vind, (vind mod 2) * half_width);
    view_set_yport(vind, (vind div 2) * half_height);
    view_set_wport(vind, half_width);
    view_set_hport(vind, half_height);
}