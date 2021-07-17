/// @description Assigns the given timeline to the calling instance
/// @argument {real} obj object or instance index
/// @argument {real} timeline timeline index
/// @argument {real} frames (Optional) timeline speed in frames
/// @argument {boolean} loop (Optional) whether or not the timeline should repeat
/// @argument {boolean} reset (Optional) whether or not to ignore if the same timeline is already assigned
function timeline_set(obj, timeline, frames = 1, loop = true, reset = true)
{
	with (obj) {
		if (timeline_index != timeline or reset) {
	        timeline_index = timeline;
	        timeline_speed = 1 / frames;
			timeline_loop = loop;
			timeline_running = (timeline_exists(timeline) and game_is_running());
			timeline_position = 0;
	    }
	}
}

/// @description Checks if any obj (or instance) has a timeline that has reached its last moment
/// @argument {real} obj object or instance index
/// @returns {boolean}
function timeline_expired(obj)
{
	return (
		instance_exists(obj) and 
		timeline_exists(obj.timeline_index) and 
		obj.timeline_position >= timeline_max_moment(obj.timeline_index)
	);
}