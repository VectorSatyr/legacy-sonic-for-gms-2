/// @description Target
with (owner)
{
    if (selection != other.id)
	{
        with (selection)
		{
            selected = false;
        }
        other.selected = true;
        selection = other.id;
        previous_index = index;
        index = other.index;
    }
}