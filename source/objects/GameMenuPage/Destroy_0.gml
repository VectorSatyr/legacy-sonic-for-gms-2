/// @description Cleanup
ds_list_destroy(choices);
with (GameMenuChoice)
{
    if (owner == other.id)
	{
        instance_destroy();
    }
}