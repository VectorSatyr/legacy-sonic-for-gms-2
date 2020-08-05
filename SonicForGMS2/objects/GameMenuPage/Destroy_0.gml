/// @description Cleanup
ds_list_destroy(choices);
with (GameMenuChoice)
{
    if (owner == other)
	{
        instance_destroy();
    }
}