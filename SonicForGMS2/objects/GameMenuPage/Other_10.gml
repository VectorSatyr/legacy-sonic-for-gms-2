/// @description Ascend
var total = ds_list_size(choices);
previous_index = index;
index = (is_undefined(index)) ? 0 : ((wrap) ? (index + 1) mod total : min(index + 1, total - 1));
if (not is_undefined(previous_index) and index != previous_index)
{
	with (selection)
	{
		selected = false;
	}
	selection = choices[| index];
	with (selection)
	{
		selected = true;
	}
}