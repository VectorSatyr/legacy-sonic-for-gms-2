/// @description  Initialize
event_inherited();
name = "select";
event_descend = "left";
event_ascend = "right";

mode = "select";

cursor = noone;
delete_icon = noone;

var start_x = 11;
var start_y = 11;
var separation = 8;
var nosave_ox = 38;
var nosave_w = 88 + separation;
var save_ox = 44;
var save_w = 96 + separation;

// no save option
choice_nosave = instance_create_layer(start_x + nosave_ox, start_y, "gui", FileSelectMenuNoSaveChoice);
game_menu_page_add_choice(self, choice_nosave);

// save files
var file;
for (var n = 0; n < MAX_GAME_SAVES; ++n) {
    file = game_save_find(n);
    if (instance_exists(file)) {
        if (file.complete) {
            choice_save[n] = instance_create_layer(start_x + nosave_w + save_ox + (n * save_w), start_y, "gui", FileSelectMenuCompleteFileChoice);
            choice_save[n].name = "complete" + string(n);
        } else {
            choice_save[n] = instance_create_layer(start_x + nosave_w + save_ox + (n * save_w), start_y, "gui", FileSelectMenuExistingFileChoice);
            choice_save[n].name = "existing" + string(n);
        }
        choice_save[n].file_index = n;
        instance_perform_user_event(choice_save[n], 1);
    } else {
        choice_save[n] = instance_create_layer(start_x + nosave_w + save_ox + (n * save_w), start_y, "gui", FileSelectMenuNewFileChoice);
        choice_save[n].name = "new" + string(n);
        choice_save[n].file_index = n;
    }
    game_menu_page_add_choice(self, choice_save[n]);
}

var starting_slot = choice_save[0];
with (GameSaveDirectory) {
    if (in_range(index, -1, MAX_GAME_SAVES)) {
        starting_slot = other.choice_save[index];
    }
}

instance_perform_user_event(starting_slot, 0);

// delete option
choice_delete = instance_create_layer(start_x + nosave_w + (MAX_GAME_SAVES * save_w) + nosave_ox, start_y, "gui", FileSelectMenuDeleteChoice);
game_menu_page_add_choice(self, choice_delete);

// delete icon
delete_icon = instance_create_depth(choice_delete.x, choice_delete.y, depth - 2, FileSelectMenuDeleteIcon);

// cursor
cursor = instance_create_depth(starting_slot.x, starting_slot.y, depth - 1, FileSelectMenuCursor);
game_camera_direct(0, game_camera_default_behavior, cursor);
var cam = view_get_camera(0);
camera_set_view_border(cam, CAMERA_WIDTH * 0.5, camera_get_view_border_y(cam));
with (cursor) {
    game_camera_default_behavior(0);
}

