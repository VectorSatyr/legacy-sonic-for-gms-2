/// @description Wait
if (timer > 0)
{
	--timer;
	if (timer <= 0 or game_input_event_pressed("start"))
	{
		timer = 0;
		event_user(0); // proceed
	}
}