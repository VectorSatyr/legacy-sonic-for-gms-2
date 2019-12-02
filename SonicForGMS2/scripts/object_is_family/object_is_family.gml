/// @description Checks if the given object is of the given 'kind' or is a relative
/// @argument {real} obj object index to check
/// @argument {real} kind object index to match
/// @returns {boolean}
var obj = argument0;
var kind = argument1;

return (obj == kind or object_is_ancestor(obj, kind));
