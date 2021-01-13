/// @description  Initialize
event_inherited();
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

spark[0] = instance_create_layer(xstart + radius, ystart, "effects", InvincibilitySpark);
timeline_set(spark[0], InvincibilitySparkAnim4);

spark[1] = instance_create_layer(xstart - radius, ystart, "effects", InvincibilitySpark);
timeline_set(spark[1], InvincibilitySparkAnim4);
spark[1].timeline_position = 5;

spark[2] = instance_create_layer(xstart, ystart - radius, "effects", InvincibilitySpark);
timeline_set(spark[2], InvincibilitySparkAnim3);

spark[3] = instance_create_layer(xstart, ystart + radius, "effects", InvincibilitySpark);
timeline_set(spark[3], InvincibilitySparkAnim3);
spark[3].timeline_position = 6;

spark[4] = instance_create_layer(xstart + radius, ystart, "effects", InvincibilitySpark);
timeline_set(spark[4], InvincibilitySparkAnim2);

spark[5] = instance_create_layer(xstart - radius, ystart, "effects", InvincibilitySpark);
timeline_set(spark[5], InvincibilitySparkAnim2);
spark[5].timeline_position = 7;

spark[6] = instance_create_layer(xstart, ystart + radius, "effects", InvincibilitySpark);
timeline_set(spark[6], InvincibilitySparkAnim1);

spark[7] = instance_create_layer(xstart, ystart - radius, "effects", InvincibilitySpark);
timeline_set(spark[7], InvincibilitySparkAnim1);
spark[7].timeline_position = 5;