/// @description Render
if (instance_exists(owner))
{
    with (owner.character)
	{
        instance_perform_user_event(shader, 2);
    }
    event_inherited();
    with (owner.character)
	{
        instance_perform_user_event(shader, 3);
    }
}