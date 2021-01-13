/// @description  Initialize
event_inherited();
reaction_script = player_react_to_bonus_stage_exit;
next_room = -1;
with (ZoneCheckPoint) {
	other.next_room = location;
}