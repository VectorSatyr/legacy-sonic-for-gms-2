/// @description Checks if the given point lines within the given terrain shape
/// @argument {real} shape instance index
/// @argument {real} px point x-position
/// @argument {real} py point y-position
/// @returns {boolean}
function game_shape_in_point(argument0, argument1, argument2) {
	var shape = argument0;
	var px = argument1;
	var py = argument2;

	var intersect = false;

	var kind = shape.object_index;

	if (object_is_family(kind, Rectangle)) {
	    var x1 = shape.bbox_left;
	    var y1 = shape.bbox_top;
	    var x2 = shape.bbox_right;
	    var y2 = shape.bbox_bottom;
	    intersect = point_in_rectangle(px, py, x1, y1, x2, y2);
	} else if (object_is_family(kind, RightTriangle)) {
	    var dx1 = shape.x;
	    var dy1 = shape.y;
	    var dx2 = shape.x + shape.sprite_width;
	    var dy2 = shape.y + shape.sprite_height;
	    intersect = point_in_triangle(px, py, dx1, dy2, dx2, dy2, dx2, dy1);
	} else if (object_is_family(kind, QuarterEllipse)) {
	    var cx = shape.x + shape.sprite_width;
	    var cy = shape.y + shape.sprite_height;
	    var xrad = shape.sprite_width;
	    var yrad = shape.sprite_height;
	    intersect = point_in_quarter_ellipse(px, py, cx, cy, xrad, yrad);
	} else if (object_is_family(kind, QuarterPipe)) {
	    var cx = shape.x;
	    var cy = shape.y;
	    var xrad = shape.sprite_width;
	    var yrad = shape.sprite_height;
	    intersect = point_in_quarter_pipe(px, py, cx, cy, xrad, yrad);
	} else {
	    intersect = (collision_point(px, py, shape, true, true) != noone);
	}

	return intersect;



}
