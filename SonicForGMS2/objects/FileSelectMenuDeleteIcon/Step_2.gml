/// @description Animate
switch (mode)
{
case "select":
    sign_index = (sign_index + sign_spin_speed) mod 4;
    break;

case "confirm":
    if (sign_index < 4)
	{
        sign_index = min(sign_index + sign_spin_speed, 4);
    }
    break;
}