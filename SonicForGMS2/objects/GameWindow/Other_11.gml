/// @description  Reframe
view_enabled = true;

for (vind = 0; vind < MAX_VIEW_COUNT; ++vind) {
    __view_set( e__VW.Visible, vind, false );
    __view_set( e__VW.XPort, vind, 0 );
    __view_set( e__VW.YPort, vind, 0 );
    __view_set( e__VW.WPort, vind, 0 );
    __view_set( e__VW.HPort, vind, 0 );
}

switch (ports) {
case 2: // horizontal split in half
    __view_set( e__VW.YPort, 1, height * 0.5 );
    for (vind = 0; vind < 2; ++vind) {
        __view_set( e__VW.Visible, vind, true );
        __view_set( e__VW.WPort, vind, width );
        __view_set( e__VW.HPort, vind, height * 0.5 );
    }
    break;

case 3: // horizontal split, then vertical split the bottom half
    __view_set( e__VW.Visible, 0, true );
    __view_set( e__VW.WPort, 0, width );
    __view_set( e__VW.HPort, 0, height * 0.5 );
    for (vind = 1; vind < 3; ++vind) {
        __view_set( e__VW.Visible, vind, true );
        __view_set( e__VW.XPort, vind, (vind - 1) * width * 0.5 );
        __view_set( e__VW.YPort, vind, height * 0.5 );
        __view_set( e__VW.WPort, vind, width * 0.5 );
        __view_set( e__VW.HPort, vind, height * 0.5 );
    }
    break;

case 4: // horizontal and vertical split into quarters
    for (vind = 0; vind < 4; ++vind) {
        __view_set( e__VW.Visible, vind, true );
        __view_set( e__VW.XPort, vind, (vind mod 2) * width * 0.5 );
        __view_set( e__VW.YPort, vind, (vind div 2) * height * 0.5 );
        __view_set( e__VW.WPort, vind, width * 0.5 );
        __view_set( e__VW.HPort, vind, height * 0.5 );
    }
    break;

default: // entire screen
    __view_set( e__VW.Visible, 0, true );
    __view_set( e__VW.WPort, 0, width );
    __view_set( e__VW.HPort, 0, height );
}

