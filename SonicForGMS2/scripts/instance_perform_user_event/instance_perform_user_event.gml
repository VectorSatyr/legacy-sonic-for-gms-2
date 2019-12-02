/// @description Executes the the given user event for the given instance (does nothing if 'index' is not in the range (0, 15))
/// @argument {real} inst instance index
/// @argument {real} index user event number
var inst = argument0;
var index = argument1;

if (in_range(index, -1, MAX_USER_EVENTS)) {
    with (inst) {
        event_user(index);
    }
}
