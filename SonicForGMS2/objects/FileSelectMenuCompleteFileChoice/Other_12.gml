/// @description  Downgrade
var choice = instance_create_layer(x, y, "gui", FileSelectMenuNewFileChoice);
choice.name = "new" + string(file_index);
choice.file_index = file_index;
game_menu_page_replace_choice(owner, choice, index);

