/// @description Initialize
event_inherited();
name = "select";
event_descend = "left";
event_ascend = "right";
mode = "select";

cursor_base_speed = 8;
flick_size = 64;
flicked = false;

var camera_center_x = CAMERA_WIDTH * 0.5;
var start_x = camera_center_x + 12;
var start_y = 12;
var separation = 8;
var nosave_ox = 38;
var nosave_w = 88 + separation;
var save_ox = 44;
var save_w = 96 + separation;

room_width = start_x + nosave_w + (MAX_GAME_SAVES * save_w) + nosave_w + start_x;

// no save option
choice_nosave = instance_create_layer(start_x + nosave_ox, start_y, "gui", FSNoSaveChoice);
game_menu_page_add_choice(id, choice_nosave);

// save files
var file, exists, type, name;
for (var n = 0; n < MAX_GAME_SAVES; ++n)
{
	file = game_save_find(n);
	exists = instance_exists(file);
	type = (not exists) ? FSNewFileChoice : 
		((file.complete) ? FSCompleteFileChoice : FSExistingFileChoice);
	name = (not exists) ? "new" + string(n) :
		((file.complete) ? "complete" + string(n) : "existing" + string(n));
	choice_save[n] = instance_create_layer(start_x + nosave_w + save_ox + (n * save_w), start_y, "gui", type);
	choice_save[n].name = name;
	choice_save[n].file_index = n;
	game_menu_page_add_choice(id, choice_save[n]);
	if (exists)
	{
		instance_perform_user_event(choice_save[n], 3); // load
	}
}

var starting_slot = choice_save[0];
with (GameSaveDirectory)
{
	if (includes(index, 0, MAX_GAME_SAVES - 1))
	{
		starting_slot = other.choice_save[index];
	}
}
instance_perform_user_event(starting_slot, 2); // target

// delete option
choice_delete = instance_create_layer(start_x + nosave_w + (MAX_GAME_SAVES * save_w) + nosave_ox, start_y, "gui", FSDeleteChoice);
game_menu_page_add_choice(id, choice_delete);

// delete icon
delete_icon = instance_create_layer(choice_delete.x, choice_delete.y, "cursor", FileSelectMenuDeleteIcon);

// cursor
cursor = instance_create_layer(starting_slot.x, starting_slot.y, "cursor", FileSelectMenuCursor);
game_camera_direct(0, game_camera_default_behavior, cursor);
var cam = view_get_camera(0);
camera_set_view_border(cam, camera_center_x, camera_get_view_border_y(cam));
with (cursor)
{
	game_camera_default_behavior(0);
}