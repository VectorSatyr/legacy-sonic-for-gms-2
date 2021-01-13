/// @description Change face
sprite_index = MonitorIconSonicSprite;
var owner = game_player_find(view_current);
if (instance_exists(owner))
{
	switch (owner.character_id)
	{
	case Tails:
		sprite_index = MonitorIconTailsSprite;
		break;
	case Knuckles:
		sprite_index = MonitorIconKnucklesSprite;
		break;
	}
}