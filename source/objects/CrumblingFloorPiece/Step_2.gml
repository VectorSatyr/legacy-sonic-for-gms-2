/// @description  Destroy off-screen
if (not instance_on_screen(id, max(sprite_width, sprite_height))) {
    instance_destroy();
}

