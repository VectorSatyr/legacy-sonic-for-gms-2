/// @description  Transition
transition += image_speed;
if (transition >= 3.0) {
    if (room_exists(next_room)) {
        room_goto(next_room);
    }
}

