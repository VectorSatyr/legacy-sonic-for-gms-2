/// @description Acquires the current zone name
/// @returns {string} zone name
var name = "";

with (ZoneConfiguration) {
    name = self.name;
}

return name;