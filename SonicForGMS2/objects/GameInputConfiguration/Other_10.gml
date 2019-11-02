/// @description  Read
ini_open(fname);
var section = "controls_keyboard";
game_input_event_map_key("up", ini_read_real(section, "up", default_keyboard_up));
game_input_event_map_key("down", ini_read_real(section, "down", default_keyboard_down));
game_input_event_map_key("left", ini_read_real(section, "left", default_keyboard_left));
game_input_event_map_key("right", ini_read_real(section, "right", default_keyboard_right));
game_input_event_map_key("a", ini_read_real(section, "a", default_keyboard_a));
game_input_event_map_key("b", ini_read_real(section, "b", default_keyboard_b));
game_input_event_map_key("c", ini_read_real(section, "c", default_keyboard_c));
game_input_event_map_key("start", ini_read_real(section, "start", default_keyboard_start));
for (var channel = 0; channel < total_channels; ++channel) {
    section = "controls_gamepad" + string(channel);
    game_input_event_map_button(channel, "up", ini_read_real(section, "up", default_gamepad_up));
    game_input_event_map_button(channel, "down", ini_read_real(section, "down", default_gamepad_down));
    game_input_event_map_button(channel, "left", ini_read_real(section, "left", default_gamepad_left));
    game_input_event_map_button(channel, "right", ini_read_real(section, "right", default_gamepad_right));
    game_input_event_map_button(channel, "a", ini_read_real(section, "a", default_gamepad_a));
    game_input_event_map_button(channel, "b", ini_read_real(section, "b", default_gamepad_b));
    game_input_event_map_button(channel, "c", ini_read_real(section, "c", default_gamepad_c));
    game_input_event_map_button(channel, "start", ini_read_real(section, "start", default_gamepad_start));
    game_input_event_map_negative_axis(channel, "up", ini_read_real(section, "axis_up", default_gamepad_axis_v));
    game_input_event_map_positive_axis(channel, "down", ini_read_real(section, "axis_down", default_gamepad_axis_v));
    game_input_event_map_negative_axis(channel, "left", ini_read_real(section, "axis_left", default_gamepad_axis_h));
    game_input_event_map_positive_axis(channel, "right", ini_read_real(section, "axis_right", default_gamepad_axis_h));
}
ini_close();

