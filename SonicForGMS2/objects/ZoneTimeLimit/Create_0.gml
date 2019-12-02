/// @description  Initialize
event_inherited();
image_speed = 0;

count = 0;
limit = 36000;
enabled = false;
expired = false;

with (PlayerEntrance) {
    other.count = floor_to(epoch, 60);
}

