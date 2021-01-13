/// @description  Escape
var sine = dsin(gravity_direction);
var cosine = dcos(gravity_direction);
while (place_meeting(x, y, other.id)) {
    x -= cosine;
    y += sine;
}

y_speed = 0;

