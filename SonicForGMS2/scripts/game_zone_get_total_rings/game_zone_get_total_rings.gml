/// @description  game_zone_get_total_rings()
/**
 * @description Acquires the current number of rings in the zone
 * @returns {real} total zone rings (or undefined on error)
 */


var rings = undefined;

with (GameZone) {
    if (not is_undefined(total_ring_count)) {
        rings = total_ring_count;
    }
}

return rings;
