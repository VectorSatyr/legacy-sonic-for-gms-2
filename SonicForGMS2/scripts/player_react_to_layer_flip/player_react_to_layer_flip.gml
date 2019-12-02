var ind = argument0;
var phase = argument1;

switch (phase) {
case "checking":
    if (point_in_rectangle(x_int, y_int, ind.bbox_left, ind.bbox_top, ind.bbox_right, ind.bbox_bottom)) {
        game_pc_react_to(self, ind);
    }
    break;

case "entering":
    if (sign(ind.image_xscale) == sign(x_int - xprevious)) {
        depth_mask = ind.left;
    } else {
        depth_mask = ind.right;
    }
    break;

case "exiting":
    break;
}
