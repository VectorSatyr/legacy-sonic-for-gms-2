/// @description  Setup

// rings warning
rings_warning = (other.rings <= 0);

// lives icon
var obj;
switch (owner.character_id)
{
case Tails: obj = Sonic2TailsLifeIcon; break;
case Knuckles: obj = Sonic2KnucklesLifeIcon; break;
default: obj = Sonic2SonicLifeIcon;
}
post_life_icon = instance_create_layer(CAMERA_WIDTH - 64, 8, "hud", obj);
post_life_icon.vind = index;
post_life_icon.owner = owner;

// score header
post_score_header = instance_create_layer(16, 8, "hud", GameSign);
post_score_header.vind = index;
post_score_header.sprite_index = HUDScoreTextSprite;

// time header
post_time_header = instance_create_layer(17, 24, "hud", GameSign);
post_time_header.vind = index;
post_time_header.sprite_index = HUDTimeTextSprite;

// rings header
post_rings_header = instance_create_layer(16, 40, "hud", GameSign);
post_rings_header.vind = index;
post_rings_header.sprite_index = HUDRingsTextSprite;

// lives label
post_lives = instance_create_layer(CAMERA_WIDTH - 15, 17, "hud", LabeledGameSign);
post_lives.vind = index;
post_lives.font = global.HUDLivesFont;
post_lives.halign = fa_right;
post_lives.label = string(owner.life_count);

// score label
post_score = instance_create_layer(112, 8, "hud", LabeledGameSign);
post_score.vind = index;
post_score.font = global.HUDFont;
post_score.halign = fa_right;
post_score.label = string(owner.score_count);

// time label
post_time = instance_create_layer(88, 24, "hud", LabeledGameSign);
post_time.vind = index;
post_time.font = global.HUDFont;
post_time.halign = fa_right;
post_time.label = "0 00";

// rings label
post_rings = instance_create_layer(88, 40, "hud", LabeledGameSign);
post_rings.vind = index;
post_rings.font = global.HUDFont;
post_rings.halign = fa_right;
post_rings.label = string(owner.rings);