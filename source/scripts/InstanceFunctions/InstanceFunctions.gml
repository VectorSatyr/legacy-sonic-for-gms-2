/// @description Checks if the given object is of the given 'kind' or is a relative
/// @argument {real} obj object index to check
/// @argument {real} kind object index to match
/// @returns {boolean}
function object_is_family(obj, kind)
{
	return (obj == kind or object_is_ancestor(obj, kind));
}

/// @description Executes the the given user event for the given instance (does nothing if 'numb' is not in the range (0, 15))
/// @argument {real} ind instance index
/// @argument {real} numb user event number
function instance_perform_user_event(ind, numb)
{
	if (includes(numb, 0, MAX_USER_EVENTS - 1)) {
		with (ind) event_user(numb);
	}
}