/// @description Initialize
event_inherited();
activate = function ()
{
	activated = true;
	timeline_set(id, LampPostHitAnim);
};
preactivate = function ()
{
	activated = true;
	timeline_set(id, LampPostBlinkAnim);
};