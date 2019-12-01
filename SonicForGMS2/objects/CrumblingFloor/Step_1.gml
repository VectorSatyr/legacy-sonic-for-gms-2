/// @description  Grow unstable
if (time_to_crumble > 0) {
    --time_to_crumble;
    if (time_to_crumble == 0) {
        game_pc_play_sound(perp, CollapseSound);

        var cell_width = sprite_width div total_collumns;
        var cell_height = sprite_height div total_rows;
        var reverse = (sign(image_xscale) < 0);
        var row, collumn, ind;

        for (row = 0; row < total_rows; ++row) {
            for (collumn = 0; collumn < total_collumns; ++collumn) {
                ind = instance_create_layer(bbox_left + collumn * cell_width, bbox_top + row * cell_height, "collisions", CrumblingFloorPiece);
                ind.image_xscale = cell_width / ind.sprite_width;
                ind.image_yscale = cell_height / ind.sprite_height;
                ind.bottom_solid = false;
                ind.normal = 0;
                if (row > 0) {
                    ind.top_solid = false;
                    ind.depth_mask = 0;
                }
                if (reverse) {
                    ind.timed_delay += (collumn * timed_delay_per_collumn);
                } else {
                    ind.timed_delay += ((total_collumns - collumn) * timed_delay_per_collumn);
                }
                ind.timed_delay += ((total_rows - row - 1) * timed_delay_per_row);
            }
        }
        instance_destroy();
    }
}

