/// @description Checks if any obj (or instance) has a timeline that has reached its last moment
/// @argument {real} obj object or instance index
/// @returns {boolean}
var obj = argument0;

var result = false;

with (obj) {
    if (timeline_position >= timeline_max_moment(timeline_index)) {
        result = true;
    }
}

return result;
