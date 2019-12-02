/// @description  Display
switch (phase) {
case 0: // fade-in
    image_alpha += fade_speed;
    if (image_alpha >= 1) {
        image_alpha = 1;
        alarm[0] = display_time;
        phase = 1;
    }
    break;

case 1: // do nothing
    break;

case 2: // press start
    press_start_sin += press_start_blink_speed;
    press_start_alpha = abs(dsin(press_start_sin));
    if (keyboard_check_pressed(vk_f1)) {
        phase = 3;
    }
    break;

case 3: // fade out
    image_alpha -= fade_speed;
    if (image_alpha <= 0) {
        instance_destroy();
    }
    break;
}

