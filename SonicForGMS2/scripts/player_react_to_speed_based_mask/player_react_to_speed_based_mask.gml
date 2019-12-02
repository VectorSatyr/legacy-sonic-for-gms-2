var ind = argument0;
var phase = argument1;

switch (phase) {
case "checking":
    // will think of a better method later ...
    if (not on_the_ground or abs(x_speed) < ind.threshold) {
        var pos = ds_list_find_index(local_solids, ind);
        if (pos != -1) {
            ds_list_delete(local_solids, pos);
        }
    }
    break;

case "entering":
    break;

case "exiting":
    break;
}
