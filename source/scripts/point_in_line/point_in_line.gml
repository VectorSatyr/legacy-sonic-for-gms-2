/// @description Checks if the given point rests along the given line segment
/// @argument {real} px   point x-position
/// @argument {real} py   point y-position
/// @argument {real} x1   first line point x-position
/// @argument {real} y1   first line point y-position
/// @argument {real} x2   second line point x-position
/// @argument {real} y2   second line point y-position
/// @returns {boolean}
/// @copyright 2001 softSurfer, 2012 Dan Sunday
/// @see {@link http://geomalgorithms.com/a05-_intersect-1.html#inSegment()}
function point_in_line(argument0, argument1, argument2, argument3, argument4, argument5) {
	var px = argument0;
	var py = argument1;
	var x1 = argument2;
	var y1 = argument3;
	var x2 = argument4;
	var y2 = argument5;

	var intersect = false;

	if (x1 != x2) {
	    // segment is non-vertical
	    if((x1 <= px and px <= x2) or (x1 >= px and px >= x2)) {
	        intersect = true;
	    }
	} else {
	    // segment is vertical; test y instead
	    if ((y1 <= py and py <= y2) or (y1 >= py and py >= y2)) {
	        intersect = true;
	    }
	}

	return intersect;

	/*
	// inSegment(): determine if a point is inside a segment
	//    Input:  a point P, and a collinear segment S
	//    Return: 1 = P is inside S
	//            0 = P is  not inside S
	int
	inSegment( Point P, Segment S)
	{
	    if (S.P0.x != S.P1.x) {    // S is not  vertical
	        if (S.P0.x <= P.x && P.x <= S.P1.x)
	            return 1;
	        if (S.P0.x >= P.x && P.x >= S.P1.x)
	            return 1;
	    }
	    else {    // S is vertical, so test y  coordinate
	        if (S.P0.y <= P.y && P.y <= S.P1.y)
	            return 1;
	        if (S.P0.y >= P.y && P.y >= S.P1.y)
	            return 1;
	    }
	    return 0;
	}


/* end point_in_line */
}
