/// @description Clean up
if (surface_exists(base_surface))
{
    surface_free(base_surface);
}
if (surface_exists(final_surface))
{
    surface_free(final_surface);
}