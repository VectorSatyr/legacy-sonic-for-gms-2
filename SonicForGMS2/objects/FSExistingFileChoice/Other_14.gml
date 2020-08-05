/// @description Downgrade
var choice = instance_create_layer(x, y, "gui", FSNewFileChoice);
choice.name = "new" + string(file_index);
choice.file_index = file_index;
with (choice)
{
	event_perform(ev_other, ev_room_start);
}
game_menu_page_replace_choice(owner, choice, index);