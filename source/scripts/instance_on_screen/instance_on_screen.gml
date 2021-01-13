/// @description Checks if an instance is currently visible in any view (always returns true if views are not enabled)
/// @argument {real} ind instance index
/// @argument {real} [padding] (optional) pixels to extend the size of each view when checking the range
/// @returns {boolean}
function instance_on_screen() {
	var padding = 0;
	switch (argument_count) {
	case 2: padding = argument[1];
	default:
	    var ind = argument[0];
	}

	var result = false;

	if (view_enabled) {
	    var x1 = ind.x - padding;
	    var y1 = ind.y - padding;
	    var x2 = ind.x + padding;
	    var y2 = ind.y + padding;
	    for (var vind = 0; vind < MAX_VIEW_COUNT; ++vind) {
	        if (view_get_visible( vind ) and rectangle_in_view(x1, y1, x2, y2, vind)) {
	            result = true;
	            break;
	        }
	    }
	} else {
	    result = true; // whole room is visible
	}

	return result;



}
