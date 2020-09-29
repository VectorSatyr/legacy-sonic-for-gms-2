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

// rings header
post_rings_header = instance_create_layer(16, 8, "hud", GameSign);
post_rings_header.vind = index;
post_rings_header.sprite_index = HUDRingsTextSprite;

// lives label
post_lives = instance_create_layer(CAMERA_WIDTH - 15, 17, "hud", LabeledGameSign);
post_lives.vind = index;
post_lives.font = global.HUDLivesFont;
post_lives.halign = fa_right;
post_lives.label = string(owner.life_count);

// rings label
post_rings = instance_create_layer(88, 8, "hud", LabeledGameSign);
post_rings.vind = index;
post_rings.font = global.HUDFont;
post_rings.halign = fa_right;
post_rings.label = string(owner.rings);

// score label (unused)
post_score = noone;