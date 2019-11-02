/// @description  game_pc_gain_shield(character, kind)
/// @param character
/// @param  kind
// ---------------------------------------------------------------
/*
**  Gives the calling player instance a shield of the given kind.
**
**  Arguments
**      kind    Real; object index of shield type
**
**  Returns:
**      N/A
*/
// ---------------------------------------------------------------
var character = argument0;
var kind = argument1;
// ---------------------------------------------------------------

with (character) {
    with (shield) {
        if (object_index != kind) {
            instance_destroy();
            other.shield = noone;
        }
    }
    if (not instance_exists(shield)) {
        shield = instance_create(x_int, y_int, kind);
        shield.image_xscale = facing_sign;
        shield.depth = depth - 1;
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
