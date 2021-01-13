/// @description  Initialize
image_speed = 0;

count = 0;
limit = 36000;
enabled = false;
expired = false;

with (ZoneCheckPoint) {
    other.count = floor_to(epoch, 60);
}