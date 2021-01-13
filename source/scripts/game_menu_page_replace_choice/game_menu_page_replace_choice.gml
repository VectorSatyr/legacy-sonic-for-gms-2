/// @description Updates the given menu choice at the given index on the given page into the new choice specified
/// @argument {real} page instance index of GameMenuPage
/// @argument {real} choice instance index of GameMenuChoice
/// @argument {real} index choice index to replace
function game_menu_page_replace_choice(argument0, argument1, argument2) {
	var page = argument0;
	var choice = argument1;
	var index = argument2;

	if (instance_exists(page) and instance_exists(choice)) {
	    if (index > -1 and index < ds_list_size(page.choices)) {
	        choice.owner = page;
	        choice.index = index;
	        choice.selected = page.choices[| index].selected;
	        instance_destroy(page.choices[| index]);
	        page.choices[| index] = choice;
	        if (choice.selected) {
	            page.selection = choice;
	        }
	    }
	}



}
