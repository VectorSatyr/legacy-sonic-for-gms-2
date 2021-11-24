/// @description Enter
with (GamePlayer) {
	game_player_spawn_character(id, other.x, other.y);
}
var player1 = game_player_find(0);
if (instance_exists(player1)) {
	with (ComputerPlayer) {
		target = player1.character;
	}
	var shield = game_zone_memory_find("player1Shield");
	if (not is_undefined(shield)) {
		game_pc_gain_shield(player1.character, shield);
	}
}
with (ZoneCheckPoint) {
	if (location == room) {
		game_zone_memory_clear();
		break;
	}
}
with (instance_position(x, y, LampPost)) {
	preactivate();
}