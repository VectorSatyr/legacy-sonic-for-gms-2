var character = argument0;
var len = argument1;
var dir = argument2;

with (character) {
    var sine = dsin(dir);
    var cosine = dcos(dir);
    x_speed -= sine * len;
    y_speed -= cosine * len;
}
