/// @description Horizontal split in half
var half_height = height * 0.5;
view_set_yport(1, half_height);
for (vind = 0; vind < 2; ++vind)
{
    view_set_visible(vind, true);
    view_set_wport(vind, width);
    view_set_hport(vind, half_height);
}