/// @description Descend
var total = ds_list_size(choices);
previous_index = index;
index = (is_undefined(index)) ? total - 1 : ((wrap) ? (index + total - 1) mod total : max(index - 1, 0));
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