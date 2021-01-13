/// @description Force cleanup
event_perform(ev_alarm, 0);
if (alarm[0] < throttle_speed)
{
    alarm[0] = throttle_speed;
}