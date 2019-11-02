/// @description  Setup

// lives icon
post_life_icon = instance_create(CAMERA_WIDTH - 64, 8, GameSign);
post_life_icon.vind = index;
post_life_icon.sprite_index = HUDLifeIconSprite;
switch (owner.character_id) {
case Knuckles: post_life_icon.image_index = 2; break;
case Tails: post_life_icon.image_index = 1; break;
}

// score header
post_score_header = instance_create(16, 8, GameSign);
post_score_header.vind = index;
post_score_header.sprite_index = HUDScoreTextSprite;

// time header
post_time_header = instance_create(17, 24, GameSign);
post_time_header.vind = index;
post_time_header.sprite_index = HUDTimeTextSprite;

// rings header
post_rings_header = instance_create(16, 40, GameSign);
post_rings_header.vind = index;
post_rings_header.sprite_index = HUDRingsTextSprite;

// lives label
post_lives = instance_create(CAMERA_WIDTH - 15, 17, LabeledGameSign);
post_lives.vind = index;
post_lives.font = global.HUDLivesFont;
post_lives.halign = fa_right;
post_lives.label = string(owner.life_count);

// score label
post_score = instance_create(112, 8, LabeledGameSign);
post_score.vind = index;
post_score.font = global.HUDFont;
post_score.halign = fa_right;
post_score.label = string(owner.score_count);

// time label
post_time = instance_create(88, 24, LabeledGameSign);
post_time.vind = index;
post_time.font = global.HUDFont;
post_time.halign = fa_right;
post_time.label = "0 00";

// rings label
post_rings = instance_create(88, 40, LabeledGameSign);
post_rings.vind = index;
post_rings.font = global.HUDFont;
post_rings.halign = fa_right;
post_rings.label = string(owner.rings);

