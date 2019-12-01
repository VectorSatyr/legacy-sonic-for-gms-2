/// @description  Generate pipe

// get dimensions
var width = bbox_right - bbox_left;
var height = bbox_bottom - bbox_top;
var average = (width + height) * 0.5;

// divide into parts
var ideal_size = 16;
var total_parts = ceil(log10(average / ideal_size) / log10(2));
total_parts += total_parts - 1;
var x_scale = width / total_parts;
var y_scale = height / total_parts;

// get triangle dimensions
var part_width = sprite_get_width(TriangularMaskSprite) * sign(image_xscale);
var part_height = sprite_get_height(TriangularMaskSprite) * sign(image_yscale);

var ix = 0;
var iy = 0;
var px, py, m1, m2, ox, oy;

// create pipe
for (var n = 0; n < total_parts; ++n) {
    px = ix;
    py = iy;

    // calculate intersection
    m1 = (total_parts - n) / (n + 1);
    m2 = (total_parts - (n + 1)) / (n + 2);

    ix = (-n + (n + 1)) / (m1 - m2);
    iy = (ix * m1) + n;

    ix *= x_scale;
    iy *= y_scale;

    // calculate positioning
    if (image_xscale > 0) {
        ox = bbox_right - px;
    } else {
        ox = bbox_left + px;
    }

    if (image_yscale < 0) {
        oy = bbox_bottom - py;
    } else {
        oy = bbox_top + py;
    }

    // place triangle
    with (instance_create_layer(ox, oy, "collisions", RightTriangle)) {
        // scale across intersections
        image_xscale = (ix - px) / part_width;
        image_yscale = (iy - py) / part_height;
        x -= sprite_width; // space correction

        // copy attributes
        depth = other.depth;
        depth_mask = other.depth_mask;
        top_solid = other.top_solid;
        bottom_solid = other.bottom_solid;
        sticky = other.sticky;
        auto_normal = false;

        // may as well calculate surface direction, too ...
        event_perform(ev_other, ev_room_start);
    }
}

instance_destroy();
