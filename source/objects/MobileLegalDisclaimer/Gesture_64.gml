/// @description Dismiss
if (state == "")
{
	state = "exiting";
	duration = fadeDuration;
	event_user(1); // dismiss
}