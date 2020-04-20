/// @description Acquires the current number of rings in the zone
/// @returns {real} total zone rings (or undefined on error)
var rings = undefined;

with (ZoneConfiguration) {
    if (not is_undefined(total_ring_count)) {
        rings = total_ring_count;
    }
}

return rings;