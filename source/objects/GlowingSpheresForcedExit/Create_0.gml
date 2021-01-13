/// @description  Initialize
image_speed = 0;
timer = 60;
next_room = -1;
with (ZoneCheckPoint) {
	other.next_room = location;
}