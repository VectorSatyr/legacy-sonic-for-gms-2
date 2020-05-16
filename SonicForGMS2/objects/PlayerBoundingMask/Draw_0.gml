/// @description Draw
if (image_angle mod 180)
{
    draw_rectangle_color(x - y_radius, y - x_radius, x + y_radius, y + x_radius, rect_color, rect_color, rect_color, rect_color, true);
}
else
{
    draw_rectangle_color(x - x_radius, y - y_radius, x + x_radius, y + y_radius, rect_color, rect_color, rect_color, rect_color, true);
}
var sine = dsin(image_angle);
var cosine = dcos(image_angle);
draw_primitive_begin(pr_linelist);
draw_vertex_colour(x - cosine * x_wall_radius, y + sine * x_wall_radius, sensor_color, image_alpha);
draw_vertex_colour(x + cosine * x_wall_radius, y - sine * x_wall_radius, sensor_color, image_alpha);
draw_vertex_colour(x, y, c_white, image_alpha);
draw_vertex_colour(x + sine * y_radius, y + cosine * y_radius, sensor_color, image_alpha);
draw_primitive_end();