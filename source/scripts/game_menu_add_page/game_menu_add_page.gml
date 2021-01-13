/// @description Attaches the given page to the given menu; if it is the first page added, it is immediately enabled
/// @argument {real} menu instance index of GameMenu
/// @argument {real} page instance index of GameMenuPage
function game_menu_add_page(argument0, argument1) {
	var menu = argument0;
	var page = argument1;

	if (instance_exists(menu) and instance_exists(page)) {
	    page.owner = menu;
	    ds_list_add(menu.pages, page);
	    if (ds_list_size(menu.pages) <= 1) {
	        page.enabled = true;
	    }
	}



}
