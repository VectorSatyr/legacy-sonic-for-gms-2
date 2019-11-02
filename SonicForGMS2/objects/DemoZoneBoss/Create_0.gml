action_inherited();
/// Initialize
image_speed = 0;

state = "scanning";

camera_lock = instance_create(x, y, PanningCameraLock);
camera_lock.left = x;
camera_lock.right = camera_lock.left + CAMERA_WIDTH;
camera_lock.bottom = 368;
camera_lock.top = camera_lock.bottom - CAMERA_HEIGHT;

starting_time = 120;
finishing_time = 60;

mobile = noone;

