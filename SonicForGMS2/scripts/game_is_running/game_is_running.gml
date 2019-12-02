/// @description Checks if there are any qualifying activities during which other room objects should cease functioning
/// @returns {boolean}
var result = true;

if (instance_exists(GameSuspension)) {
    result = false;
}

return result;
