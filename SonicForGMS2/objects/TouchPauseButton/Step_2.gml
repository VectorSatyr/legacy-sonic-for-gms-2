/// @description Blink
event_inherited();
var paused = instance_exists(PausedScreen);
blink_index = (paused) ? (blink_index + 1) mod (blink_frames * 2) : 0;
visible = (paused) ? blink_index div blink_frames : true;