/// @description  Follow
if (game_is_running()) {
    var up = ds_queue_dequeue(memory_input_up);
    var down = ds_queue_dequeue(memory_input_down);
    var left = ds_queue_dequeue(memory_input_left);
    var right = ds_queue_dequeue(memory_input_right);
    var action = ds_queue_dequeue(memory_input_action);
    var horizontal_axis = ds_queue_dequeue(memory_horizontal_axis);

    if (instance_exists(target)) {
        ds_queue_enqueue(memory_input_up, target.input_up);
        ds_queue_enqueue(memory_input_down, target.input_down);
        ds_queue_enqueue(memory_input_left, target.input_left);
        ds_queue_enqueue(memory_input_right, target.input_right);
        ds_queue_enqueue(memory_input_action, target.input_action);
        ds_queue_enqueue(memory_horizontal_axis, target.horizontal_axis_value);
    } else {
        ds_queue_enqueue(memory_input_up, 0);
        ds_queue_enqueue(memory_input_down, 0);
        ds_queue_enqueue(memory_input_left, 0);
        ds_queue_enqueue(memory_input_right, 0);
        ds_queue_enqueue(memory_input_action, 0);
        ds_queue_enqueue(memory_horizontal_axis, 0);
    }

    switch (state) {
    case "normal":
        with (character) {
            input_up_pressed = (up and not input_up);
            input_down_pressed = (down and not input_down);
            input_left_pressed = (left and not input_left);
            input_right_pressed = (right and not input_right);
            input_action_pressed = (action and not input_action);
    
            input_up = up;
            input_down = down;
            input_left = left;
            input_right = right;
            input_action = action;
            
            horizontal_axis_value = horizontal_axis;
        }
        break;
    
    case "following":
        if (instance_exists(target)) {
            if ((character.x < target.x - 10 or 
                (target.y < character.y - 50 and target.on_the_ground and target.x_speed > 0)) and 
                (target.y >= character.y - 50 or not target.on_the_ground or target.x_speed >= 0)) {
                character.input_right = true;
                if (not character.input_left) {
                    character.horizontal_axis_value = 1;
                }
            } else {
                character.input_right = false;
                if (not character.input_left) {
                    character.horizontal_axis_value = 0;
                }
            }
    
            if ((character.x > target.x + 10 or 
                (target.y < character.y - 50 and target.on_the_ground and target.x_speed < 0)) and 
                (target.y >= character.y - 50 or not target.on_the_ground or target.x_speed <= 0)) {
                character.input_left = true;
                if (not character.input_right) {
                    character.horizontal_axis_value = -1;
                }
            } else {
                character.input_left = false;
                if (not character.input_right) {
                    character.horizontal_axis_value = 0;
                }
            }
            
            if (character.on_the_ground and target.y < character.y - 50 and not target.on_the_ground) {
                character.input_action_pressed = true;
            } else {
                character.input_action_pressed = false;
            }
    
            if (character.state == player_is_jumping) {
                character.input_action = true;
            } else {
                character.input_action = false;
            }
        }
        break;
    }
}

