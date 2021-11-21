/// @description Initialize
image_speed = 0;
y_speed = 0;
life = -1;
player = noone;
flicker = true;
activate = function () {};
release = function (character)
{
	ystart = y;
	y_speed = -1;
	life = 64;
	player = character;
	flicker = false;
};