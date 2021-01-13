/// @description Initialize
image_speed = 0;
fname = "settings.ini";
enabled = (os_type == os_android or os_type == os_ios);
min_opacity = 0.25;
max_opacity = 0.5;
scale = 0.5;
instance_create_layer(0, 0, "general", DeviceTouch);
device_mouse_dbclick_enable(false);