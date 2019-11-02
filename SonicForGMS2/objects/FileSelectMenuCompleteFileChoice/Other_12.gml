/// @description  Downgrade
var choice = instance_create(x, y, FileSelectMenuNewFileChoice);
choice.name = "new" + string(file_index);
choice.file_index = file_index;
game_menu_page_replace_choice(owner, choice, index);

