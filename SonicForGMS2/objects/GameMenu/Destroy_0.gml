/// @description Cleanup
ds_list_destroy(pages);
with (GameMenuPage)
{
    if (owner == other)
	{
        instance_destroy();
    }
}