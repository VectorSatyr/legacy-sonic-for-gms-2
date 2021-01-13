/// @description  Detect gamepads
switch (async_load[?"event_type"]) {
case "gamepad discovered":
    var index = async_load[?"pad_index"];
    var in_use = false;
    with (Gamepad) {
        if (device == index) {
            in_use = true;
            break;
        }
    }
    if (not in_use and device == -1) {
        device = index;
    }
    break;

case "gamepad lost":
    var index = async_load[?"pad_index"];
    if (device == index) {
        device = -1;
    }
    break;
}

