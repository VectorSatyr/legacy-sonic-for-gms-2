/// @description  Initialize
event_inherited();
button.y -= 52;
button.visible = true;
button.sprite_index = CapsuleSwitchSprite;
button.mask_index = CapsuleSwitchMaskSprite;

small_animals = ds_list_create();

separation = 8;
total_spaces = (sprite_width div separation) - 1;

