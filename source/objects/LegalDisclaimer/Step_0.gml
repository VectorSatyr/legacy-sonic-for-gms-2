/// @description Wait
switch (state)
{
case "entering":
	--duration;
	if (duration <= 0)
	{
		state = "";
	}
	break;

case "exiting":
	--duration;
	if (duration <= 0)
	{
		instance_destroy();
	}
	break;
}