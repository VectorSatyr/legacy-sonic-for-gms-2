/// @description Shift gravity right
with (game_player_find(0))
{
    var angle = angle_wrap(character.gravity_direction + 90);
    game_pc_redirect_gravity(character, angle);
    game_pc_translate_speed(character, 0, 0);
}