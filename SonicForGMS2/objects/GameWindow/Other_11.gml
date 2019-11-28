/// @description  Reframe
view_enabled = true;

for (vind = 0; vind < MAX_VIEW_COUNT; ++vind) {
    view_set_visible( vind, false );
    view_set_xport( vind, 0 );
    view_set_yport( vind, 0 );
    view_set_wport( vind, 0 );
    view_set_hport( vind, 0 );
}

switch (ports) {
case 2: // horizontal split in half
    view_set_yport( 1, height * 0.5 );
    for (vind = 0; vind < 2; ++vind) {
        view_set_visible( vind, true );
        view_set_wport( vind, width );
        view_set_hport( vind, height * 0.5 );
    }
    break;

case 3: // horizontal split, then vertical split the bottom half
    view_set_visible( 0, true );
    view_set_wport( 0, width );
    view_set_hport( 0, height * 0.5 );
    for (vind = 1; vind < 3; ++vind) {
        view_set_visible( vind, true );
        view_set_xport( vind, (vind - 1) * width * 0.5 );
        view_set_yport( vind, height * 0.5 );
        view_set_wport( vind, width * 0.5 );
        view_set_hport( vind, height * 0.5 );
    }
    break;

case 4: // horizontal and vertical split into quarters
    for (vind = 0; vind < 4; ++vind) {
        view_set_visible( vind, true );
        view_set_xport( vind, (vind mod 2) * width * 0.5 );
        view_set_yport( vind, (vind div 2) * height * 0.5 );
        view_set_wport( vind, width * 0.5 );
        view_set_hport( vind, height * 0.5 );
    }
    break;

default: // entire screen
    view_set_visible( 0, true );
    view_set_wport( 0, width );
    view_set_hport( 0, height );
}

