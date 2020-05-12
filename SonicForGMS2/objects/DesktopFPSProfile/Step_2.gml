/// @description Title
var time = get_timer();
if (time - timestamp > refresh_rate)
{
	mean_fps = floor(mean(current_fps, fps_real));
	current_fps = fps_real;
	timestamp = time;
}
    
var text = "FPS: " + string(fps);
text += " | True FPS: " + string(mean_fps);
text += " | Deactivables: " + string(instance_number(Deactivable));
window_set_caption(text);