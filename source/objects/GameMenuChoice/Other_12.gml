/// @description Target
with (owner)
{
    if (selection != other)
	{
        with (selection)
		{
            selected = false;
        }
        other.selected = true;
        selection = other;
        previous_index = index;
        index = other.index;
    }
}