/// @description Updates the screen to reflect changes in the number of screen ports
/// @argument {real} total (Optional) number of screen ports to display
with (GameWindow) {
    if (argument_count == 1) {
        if (in_range(ports, 0, 4)) {
            ports = argument[0];
        }
    }
    event_user(1); // reframe
}
