/// @description Dequeue
with (next)
{
    previous = other.previous;
}

with (previous)
{
    next = other.next;
}

event_user(1); // stop

if (next == noone)
{
    with (previous)
	{
        if (not (playing or finished))
		{
            event_user(0); // start
        }
    }
}