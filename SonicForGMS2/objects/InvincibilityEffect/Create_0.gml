action_inherited();
/// Initialize
radius = 16;
spacing = 2;
outer_rotation = 0;
outer_rot_speed = -22.5;
inner_rotation = 0;
inner_rot_speed = -11.25;
mirror = false;

offset_x = ds_list_create();
offset_y = ds_list_create();

repeat (spacing * 3) {
    ds_list_add(offset_x, xstart);
    ds_list_add(offset_y, ystart);
}

spark = array_create(8);

spark[0] = instance_create(xstart + radius, ystart, InvincibilitySpark);
spark[0].timeline_index = InvincibilitySparkAnim4;

spark[1] = instance_create(xstart - radius, ystart, InvincibilitySpark);
spark[1].timeline_index = InvincibilitySparkAnim4;
spark[1].timeline_position = 5;

spark[2] = instance_create(xstart, ystart - radius, InvincibilitySpark);
spark[2].timeline_index = InvincibilitySparkAnim3;

spark[3] = instance_create(xstart, ystart + radius, InvincibilitySpark);
spark[3].timeline_index = InvincibilitySparkAnim3;
spark[3].timeline_position = 6;

spark[4] = instance_create(xstart + radius, ystart, InvincibilitySpark);
spark[4].timeline_index = InvincibilitySparkAnim2;

spark[5] = instance_create(xstart - radius, ystart, InvincibilitySpark);
spark[5].timeline_index = InvincibilitySparkAnim2;
spark[5].timeline_position = 7;

spark[6] = instance_create(xstart, ystart + radius, InvincibilitySpark);
spark[6].timeline_index = InvincibilitySparkAnim1;

spark[7] = instance_create(xstart, ystart - radius, InvincibilitySpark);
spark[7].timeline_index = InvincibilitySparkAnim1;
spark[7].timeline_position = 5;

