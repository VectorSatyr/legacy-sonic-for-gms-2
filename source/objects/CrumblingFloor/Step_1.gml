/// @description Grow unstable
if (crumbling) {
	--time_to_crumble;
	if (time_to_crumble <= 0) {
		game_pc_play_sound(perp, CollapseSound);
		var reverse = (sign(image_xscale) < 0);
		var row, collumn, cell, delay;
		for (row = 0; row < total_rows; ++row) {
			for (collumn = 0; collumn < total_collumns; ++collumn) {
				cell = instance_create_layer(
					bbox_left + collumn * cell_width, 
					bbox_top + row * cell_height, 
					"collisions", CrumblingFloorPiece
				);
				cell.image_xscale = cell_width / cell.sprite_width;
				cell.image_yscale = cell_height / cell.sprite_height;
				cell.bottom_solid = false;
				cell.normal = 0;
				if (row > 0) {
					cell.top_solid = false;
					cell.depth_mask = int64(0);
				}
				delay = ((total_rows - row - 1) * timed_delay_per_row);
				delay += (reverse) ? (collumn * timed_delay_per_collumn) :
					((total_collumns - collumn) * timed_delay_per_collumn);
				cell.timed_delay += delay;
			}
		}
		instance_destroy();
	}
}