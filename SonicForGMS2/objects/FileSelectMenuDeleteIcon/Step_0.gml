/// @description  Move
switch (sign(hspeed)) {
case -1:
    if (x <= target.x) {
        x = target.x;
        hspeed = 0;
    }
    break;

case 1:
    if (x >= target.x) {
        x = target.x;
        hspeed = 0;
    }
    break;
}

