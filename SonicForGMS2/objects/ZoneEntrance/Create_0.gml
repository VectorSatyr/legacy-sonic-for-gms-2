/// @description  Initialize
with (ZoneCheckPoint) {
	if (location == room) {
		other.x = x;
		other.y = y;
		break;
	}
}