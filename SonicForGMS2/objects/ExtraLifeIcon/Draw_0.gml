/// @description  Draw
if (view_current < MAX_PLAYER_COUNT) {
    var subimg = image_index;
    if (image_index == icon_index) {
        with (GamePlayer) {
            if (index == view_current) {
                switch (character_id) {
                case Knuckles: subimg++;
                case Tails: subimg++; break;
                }
            }
        }
    }

    draw_sprite_ext(sprite_index, subimg, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}

