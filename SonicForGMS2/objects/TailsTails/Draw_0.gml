/// @description Render
if (instance_exists(source))
{
    instance_perform_user_event(source.shader, 2);
    draw_self();
    instance_perform_user_event(source.shader, 3);
}