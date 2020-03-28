var player = argument0;
var amount = argument1;

with (player) {
    var count = rings;
    rings = clamp(amount, 0, MAX_RINGS_COUNT);
    if (rings != count) {
        with (display) {
            rings_warning = (other.rings <= 0);
			if (instance_exists(post_rings)) {
				post_rings.label = string(other.rings);
			}
        }
    }
}
