/// @description Gives the calling player instance a shield of the given kind.
/// @param {Real} kind object index of shield type
function game_pc_gain_shield(argument0, argument1) {
	var character = argument0;
	var kind = argument1;

	with (character) {
	    with (shield) {
	        if (object_index != kind) {
	            instance_destroy();
	            other.shield = noone;
	        }
	    }
	    if (not instance_exists(shield)) {
	        shield = instance_create_depth(x_int, y_int, depth - 1, kind);
	        shield.image_xscale = facing_sign;
	        shield.source = id;
	        if (invincibility_time > 0 or superform) {
	            shield.visible = false;
	        }
	        if (kind == AquaShield and underwater) {
	            remaining_air_time = 0;
	            if (instance_exists(drowning_music)) {
	                instance_destroy(drowning_music);
	                drowning_music = noone;
	            }
	        }
	    }
	}



}
