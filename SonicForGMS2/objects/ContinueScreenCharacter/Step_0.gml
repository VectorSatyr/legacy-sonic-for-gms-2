/// @description  React
switch (state) {
case "exiting":
    x += x_speed;
    if (x > CAMERA_WIDTH + 80) {
        instance_destroy();
    }
    break;
}

