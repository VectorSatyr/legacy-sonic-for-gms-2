/// @description Checks if the given line segments intersect each other
/// @argument {real} sx1  first line first point x-position
/// @argument {real} sy1  first line first point y-position
/// @argument {real} sx2  first line second point x-position
/// @argument {real} sy2  first line second point y-position
/// @argument {real} dx1  second line first point x-position
/// @argument {real} dy1  second line first point y-position
/// @argument {real} dx2  second line second point x-position
/// @argument {real} dy2  second line second point y-position
/// @returns {boolean}
/// @copyright 2001 softSurfer, 2012 Dan Sunday
/// @see {@link http://geomalgorithms.com/a05-_intersect-1.html#intersect2D_2Segments()}
function line_in_line(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7) {
	var sx1 = argument0;
	var sy1 = argument1;
	var sx2 = argument2;
	var sy2 = argument3;
	var dx1 = argument4;
	var dy1 = argument5;
	var dx2 = argument6;
	var dy2 = argument7;

	var intersect = false;

	var sx = sx2 - sx1;
	var sy = sy2 - sy1;
	var dx = dx2 - dx1;
	var dy = dy2 - dy1;

	var sdx1 = sx1 - dx1;
	var sdy1 = sy1 - dy1;

	var ps = (sx * sdy1) - (sdx1 * sy);
	var pd = (dx * sdy1) - (sdx1 * dy);

	var psd = (sx * dy) - (dx * sy);

	if (abs(psd) == 0) {
	    if (ps == 0 and pd == 0) {
	        // they're parallel ...
	        var dr = dot_product(sx, sy, sx, sy);
	        var ds = dot_product(dx, dy, dx, dy);
    
	        if (dr == 0 and ds == 0) {
	            // possibly identical points
	            if (sx1 == dx1 and sy1 == dy1) {
	                intersect = true;
	            }
	        } else if (dr == 0) {
	            // S is a point, but not D
	            intersect = point_in_line(sx1, sy1, dx2, dy2, dx2, dy2);
	        } else if (ds == 0) {
	            // D is a point, but not S
	            intersect = point_in_line(dx1, dy1, sx1, sy1, sx2, sy2);
	        } else {
	            var sdx2 = sx2 - dx1;
	            var sdy2 = sy2 - dy1;

	            if (dx != 0) {
	                var t0 = sdx1 / dx;
	                var t1 = sdx2 / dx;
	            } else {
	                var t0 = sdy1 / dy;
	                var t1 = sdy2 / dy;
	            }

	            if (t0 > t1) {
	                // reverse the end points
	                if (t0 >= 0 and t1 <= 1) {
	                    intersect = true;
	                }
	            }
	            if (t0 <= 1 and t1 >= 0) {
	                intersect = true;
	            }
	        }
	    }
	}

	if (not intersect) {
	    var s = ps / psd;
	    var d = pd / psd;
    
	    if ((s >= 0) and (s <= 1) and (d >= 0) and (d <= 1)) {
	        intersect = true;
	    }
	}

	return intersect;

	/*
	// Copyright 2001 softSurfer, 2012 Dan Sunday
	// This code may be freely used and modified for any purpose
	// providing that this copyright notice is included with it.
	// SoftSurfer makes no warranty for this code, and cannot be held
	// liable for any real or imagined damage resulting from its use.
	// Users of this code must verify correctness for their application.

	// intersect2D_2Segments(): find the 2D intersection of 2 finite segments
	//    Input:  two finite segments S1 and S2
	//    Output: *I0 = intersect point (when it exists)
	//            *I1 =  endpoint of intersect segment [I0,I1] (when it exists)
	//    Return: 0=disjoint (no intersect)
	//            1=intersect  in unique point I0
	//            2=overlap  in segment from I0 to I1
	int
	intersect2D_2Segments( Segment S1, Segment S2, Point* I0, Point* I1 )
	{
	    Vector    u = S1.P1 - S1.P0;
	    Vector    v = S2.P1 - S2.P0;
	    Vector    w = S1.P0 - S2.P0;
	    float     D = perp(u,v);

	    // test if  they are parallel (includes either being a point)
	    if (fabs(D) < SMALL_NUM) {           // S1 and S2 are parallel
	        if (perp(u,w) != 0 || perp(v,w) != 0)  {
	            return 0;                    // they are NOT collinear
	        }
	        // they are collinear or degenerate
	        // check if they are degenerate  points
	        float du = dot(u,u);
	        float dv = dot(v,v);
	        if (du==0 && dv==0) {            // both segments are points
	            if (S1.P0 !=  S2.P0)         // they are distinct  points
	                 return 0;
	            *I0 = S1.P0;                 // they are the same point
	            return 1;
	        }
	        if (du==0) {                     // S1 is a single point
	            if  (inSegment(S1.P0, S2) == 0)  // but is not in S2
	                 return 0;
	            *I0 = S1.P0;
	            return 1;
	        }
	        if (dv==0) {                     // S2 a single point
	            if  (inSegment(S2.P0, S1) == 0)  // but is not in S1
	                 return 0;
	            *I0 = S2.P0;
	            return 1;
	        }
	        // they are collinear segments - get  overlap (or not)
	        float t0, t1;                    // endpoints of S1 in eqn for S2
	        Vector w2 = S1.P1 - S2.P0;
	        if (v.x != 0) {
	                 t0 = w.x / v.x;
	                 t1 = w2.x / v.x;
	        }
	        else {
	                 t0 = w.y / v.y;
	                 t1 = w2.y / v.y;
	        }
	        if (t0 > t1) {                   // must have t0 smaller than t1
	                 float t=t0; t0=t1; t1=t;    // swap if not
	        }
	        if (t0 > 1 || t1 < 0) {
	            return 0;      // NO overlap
	        }
	        t0 = t0<0? 0 : t0;               // clip to min 0
	        t1 = t1>1? 1 : t1;               // clip to max 1
	        if (t0 == t1) {                  // intersect is a point
	            *I0 = S2.P0 +  t0 * v;
	            return 1;
	        }

	        // they overlap in a valid subsegment
	        *I0 = S2.P0 + t0 * v;
	        *I1 = S2.P0 + t1 * v;
	        return 2;
	    }

	    // the segments are skew and may intersect in a point
	    // get the intersect parameter for S1
	    float     sI = perp(v,w) / D;
	    if (sI < 0 || sI > 1)                // no intersect with S1
	        return 0;

	    // get the intersect parameter for S2
	    float     tI = perp(u,w) / D;
	    if (tI < 0 || tI > 1)                // no intersect with S2
	        return 0;

	    *I0 = S1.P0 + sI * u;                // compute S1 intersect point
	    return 1;
	}


/* end line_in_line */
}
