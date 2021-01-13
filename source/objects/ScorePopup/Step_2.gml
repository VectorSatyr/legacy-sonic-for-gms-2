/// @description Destroy off-screen
if (not instance_on_screen(self, max(sprite_width, sprite_height)))
{
    instance_destroy();
}