/// @description  Initialize
image_speed = 0;

for (var vind = 0; vind < MAX_VIEW_COUNT; ++vind) {
    __view_set( e__VW.WView, vind, CAMERA_WIDTH );
    __view_set( e__VW.HView, vind, CAMERA_HEIGHT );
    script[vind] = -1;
    caller[vind] = id;
}

