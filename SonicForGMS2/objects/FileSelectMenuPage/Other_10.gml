/// @description  Ascend
switch (mode) {
case "confirm":
    mode = "select";
    with (delete_icon) {
        target = other.choice_delete;
		y = ystart;
        hspeed = 8;
        event_user(1);
    }
    break;

default:
    var last = ds_list_size(choices) - 1;
    previous_index = index;
    
    var first = 0;
    if (mode == "delete") {
        first = 1;
    }
    
    if (is_undefined(index)) {
        index = first;
    } else {
        ++index;
        if (index > last) {
            index = last;
        }
    }
    
    if (not is_undefined(index) and index != previous_index) {
        with (selection) {
            selected = false;
        }
        selection = choices[| index];
        with (selection) {
            selected = true;
        }

        with (cursor) {
            target = other.selection;
            hspeed = 8;
            if (other.index == last) {
                image_index = 1;
            } else {
                image_index = 0;
            }
            if (other.index == 1) {
                x -= 2;
                y++;
            } else if (other.index == last) {
                x += 2;
                y--;
            }
        }
    
        if (mode == "delete") {
            game_audio_play_sound(BumperSound2);
            with (delete_icon) {
                target = other.selection;
                hspeed = 8;
                if (other.index == 1) {
                    x -= 2;
                    y++;
                } else if (other.index == last) {
                    x += 2;
                    y--;
                }
            }
        } else {
            game_audio_play_sound(ReelSound);
        }
    }
}