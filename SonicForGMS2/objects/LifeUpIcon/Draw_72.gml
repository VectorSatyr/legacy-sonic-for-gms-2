/// @description  Change face
sprite_index = MonitorIconSonicSprite;
var player = game_player_find(view_current);
if (instance_exists(player)) {
	switch (player.character_id) {
	case Tails:
		sprite_index = MonitorIconTailsSprite;
		break;
	case Knuckles:
		sprite_index = MonitorIconKnucklesSprite;
		break;
	}
}