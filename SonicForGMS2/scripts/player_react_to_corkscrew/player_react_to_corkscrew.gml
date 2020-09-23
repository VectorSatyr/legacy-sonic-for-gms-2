var ind = argument0;
var phase = argument1;

switch (phase)
{
case "checking":
	if (ground_id == ind.mask)
	{
		game_pc_react_to(self, ind);
	}
	break;

case "entering":
	if (state != player_is_rolling)
	{
		game_pc_perform(self, player_is_linked);
		game_pc_animate(self, "flip", true);
		linked_object_id = ind;
	}
	break;

case "exiting":
	if (linked_object_id = ind)
	{
		game_pc_perform(self, player_is_running);
	}
	break;
}