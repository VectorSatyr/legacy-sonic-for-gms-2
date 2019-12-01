/// @description  Break apart
var collumns = 2, rows = 2;
var cell_width = sprite_width div collumns;
var cell_height = sprite_height div rows;
var max_x_speed = 2;
var max_y_speed = 4;
var ox, oy;
for (oy = 0; oy < rows; ++oy) {
    for (ox = 0; ox < collumns; ++ox) {
        var debris = instance_create_layer(x + (cell_width * ox), y + (cell_height * oy), "effects", BreakableWallDebris);
        debris.sprite_index = sprite_index;
        debris.image_speed = 0;
        debris.left = cell_width * ox;
        debris.top = cell_height * oy;
        debris.width = cell_width;
        debris.height = cell_height;
        debris.x_speed = -dcos(((ox + 0.5) / collumns) * 180) * max_x_speed;
        debris.y_speed = -dcos(((oy + 0.5) / rows) * 90) * max_y_speed;
    }
}

