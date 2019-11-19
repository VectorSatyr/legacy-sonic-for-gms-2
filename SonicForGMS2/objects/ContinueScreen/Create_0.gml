/// @description  Initialize
image_speed = 0;

state = "countdown";
countdown = 10 * room_speed;

var center_ox = CAMERA_WIDTH * 0.5;

text = "CONTINUE";
text_ox = center_ox;
text_oy = 56;

countdown_string = "10";
countdown_ox = center_ox;
countdown_oy = 119;
continues_count = 0;

continues_ox = center_ox;
continues_oy = 82;
continues_separation = 24;

continues_flash = 0;

continue_stars_back = ContinueScreenStarsBack;
var w = sprite_get_width(continue_stars_back);
continue_stars_ox = countdown_ox - (w * 0.5);
continue_stars_oy = countdown_oy - 1;

var file = game_save_find(game_save_current());
if (instance_exists(file)) {
    continues_count = file.player_continues;
    continues_max_count = min(continues_count, (CAMERA_WIDTH - 16) div 16);
    continues_sprite = ContinueSonicIconSprite;

    switch (file.assist_character) {
    case Tails:
        instance_create(center_ox - 4, CAMERA_HEIGHT - 64, ContinueScreenSonic);
        instance_create(center_ox + 24, CAMERA_HEIGHT - 64, ContinueScreenTailsAssist);
        break;
    default:
        var character = ContinueScreenSonic;
        switch (file.player_character) {
        case Tails:
            character = ContinueScreenTails;
            continues_sprite = ContinueTailsIconSprite;
            break;
        case Knuckles:
            character = ContinueScreenKnuckles;
            continues_sprite = ContinueKnucklesIconSprite;
            break;
        }
        instance_create(center_ox, CAMERA_HEIGHT - 66, character);
    }
}

