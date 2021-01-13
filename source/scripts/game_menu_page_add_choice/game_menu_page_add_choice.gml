/// @description Attaches the given choice to the given menu page; if it is the first element added, it is immediately selected
/// @argument {real} page instance index of GameMenuPage
/// @argument {real} choice instance index of GameMenuChoice
function game_menu_page_add_choice(argument0, argument1) {
	var page = argument0;
	var choice = argument1;

	if (instance_exists(page) and instance_exists(choice))
	{
	    choice.owner = page;
	    choice.index = ds_list_size(page.choices);
	    ds_list_add(page.choices, choice);
	    if (choice.index == 0)
		{
	        instance_perform_user_event(choice, 2); // target
	    }
	}


}
