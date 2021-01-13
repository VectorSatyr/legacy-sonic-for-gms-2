/// @description Document
var new_text = "";
var player = game_player_find(0);
if (instance_exists(player))
{
	with (player.character)
	{
		new_text += script_get_name(state) + " ON (" + string_replace(string(ground_id), string(noone), "NO ONE");
		new_text += ") @ LAYER " + string(depth_mask) + "\n\n";
		new_text += string_replace(string_format(x_speed, 3, 2), " ", "+") + " , ";
		new_text += string_replace(string_format(y_speed, 3, 2), " ", "+") + " SPEED @ ";
		new_text += string_replace_all(string_format(direction, 4, 2), " ", "0") + " DIRECTION\n\n";
	}
}
if (text != new_text)
{
	text = new_text;
}