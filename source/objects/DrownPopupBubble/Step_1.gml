/// @description Morph
event_inherited();
if (game_is_running())
{
	if (size >= maximum_size)
	{
		var camera = view_get_camera(vind);
		var cx = camera_get_view_x(camera);
		var cy = camera_get_view_y(camera);
		var popup = instance_create_layer(x - cx, y - cy, layer, DrownPopup);
		popup.image_index = count;
		popup.camera = camera;
		instance_destroy();
	}
}