/// @description Cleanup
ds_list_destroy(pages);
with (GameMenuPage)
{
    if (owner == other.id)
	{
        instance_destroy();
    }
}