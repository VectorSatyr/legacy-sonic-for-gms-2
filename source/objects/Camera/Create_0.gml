/// @description  Initialize
image_speed = 0;

var cam;
for (var vind = 0; vind < MAX_VIEW_COUNT; ++vind) {
	cam = view_get_camera(vind);
	camera_set_view_size(cam, CAMERA_WIDTH, CAMERA_HEIGHT );
    script[vind] = -1;
    caller[vind] = id;
}

