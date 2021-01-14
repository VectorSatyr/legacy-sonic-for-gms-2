/// @description  Record instances in region
with (Deactivable) {
    if (place_meeting(x, y, other.id)) {
        ds_list_add(other.instances, id);
    }
}

