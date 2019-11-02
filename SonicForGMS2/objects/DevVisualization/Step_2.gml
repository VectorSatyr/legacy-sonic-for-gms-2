/// @description  Create text
text = "";
with (game_player_find(0)) {
    other.text += script_get_name(character.state) + " ON (" + string_replace(string(character.ground_id), string(noone), "NO ONE");
    other.text += ") @ LAYER " + string(character.depth_mask) + "##";
    other.text += string_replace(string_format(character.x_speed, 3, 2), " ", "+") + " , ";
    other.text += string_replace(string_format(character.y_speed, 3, 2), " ", "+") + " SPEED @ ";
    other.text += string_replace_all(string_format(character.direction, 4, 2), " ", "0") + " DIRECTION##";
}

