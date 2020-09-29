/// @description Position
stick.touched = touched;
if (touched)
{
    if (point_distance(x, y, posX, posY) <= radius * image_xscale)
	{
        stick.x = posX;
        stick.y = posY;
    }
	else
	{
        var dir = point_direction(x, y, posX, posY);
        stick.x = x + lengthdir_x(radius * image_xscale, dir);
        stick.y = y + lengthdir_y(radius * image_xscale, dir);
    }
}
else
{
    if (point_distance(stick.x, stick.y, x, y) >= snap_rate * image_xscale)
	{
        var dir = point_direction(stick.x, stick.y, x, y);
        stick.x += lengthdir_x(snap_rate * image_xscale, dir);
        stick.y += lengthdir_y(snap_rate * image_xscale, dir);
    }
	else
	{
        stick.x = x;
        stick.y = y;
    }       
}