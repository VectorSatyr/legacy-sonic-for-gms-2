/// @description  Enter
if (room == location) {
    event_user(0);
    with (instance_position(x, y, LampPost)) {
        event_user(2); // activate nearby lamp posts
    }
}

