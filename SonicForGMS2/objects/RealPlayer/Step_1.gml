/// @description  Command
if (game_is_running()) {
    switch (state) {
    case "normal":
        var channel = input_channel;
        with (character) {
            var input_a = game_input_event("a", channel);
            var input_b = game_input_event("b", channel);
            var input_c = game_input_event("c", channel);
        
            // on-time input
            input_up_pressed = game_input_event_pressed("up", channel);
            input_down_pressed = game_input_event_pressed("down", channel);
            input_left_pressed = game_input_event_pressed("left", channel);
            input_right_pressed = game_input_event_pressed("right", channel);
            input_action_pressed = (input_a or input_b or input_c) and not input_action;
        
            // continuous input
            input_up = game_input_event("up", channel);
            input_down = game_input_event("down", channel);
            input_left = game_input_event("left", channel);
            input_right = game_input_event("right", channel);
            input_action = input_a or input_b or input_c;
        
            // contradictory input negotiation
            if (input_up and input_down) {
                input_up = false;
                input_down = false;
            }
            if (input_left and input_right) {
                input_left = false;
                input_right = false;
            }
        
            // horizontal axis value
            if (not (input_left or input_right)) {
                horizontal_axis_value = 0;
            } else if (input_left) {
                horizontal_axis_value = -1;
            } else if (input_right) {
                horizontal_axis_value = 1;
            }
        }
        break;

    case "leaving":
        var channel = input_channel;
        with (character) {
            // on-time input
            input_up_pressed = false;
            input_down_pressed = false;
            input_left_pressed = false;
            input_right_pressed = false;
            input_action_pressed = false;
        
            // continuous input
            input_up = false;
            input_down = false;
            input_left = false;
            input_right = true;
            input_action = false;

            // horizontal axis value
            horizontal_axis_value = 1;
        }
        break;
    }
}

