/// @description  game_zone_get_name()
/**
 * @description Acquires the current zone name
 * @returns {string} zone name
 */

var name = "";

with (GameZone) {
    name = self.name;
}

return name;
