/// @description  game_input_event_map_key(event, key)
/// @param event
/// @param  key
/**
 * @description Binds the given keyboard key to the given event. (Keyboard events are always registered on input channel 0)
 * @argument {string} event event name
 * @argument {real} key keyboard key (see GameMaker documentation for more info)
 */

var event = argument0;
var key = argument1;

if (not instance_exists(Keyboard)) {
    instance_create(0, 0, Keyboard);
}

with (Keyboard) {
    if (event == "") {
        ds_map_delete(buttons, key);
    } else {
        ds_map_replace(buttons, key, event);
    }
}
