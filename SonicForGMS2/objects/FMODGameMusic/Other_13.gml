/// @description  Track
with (FMODAudioSystem) {
    if (music == other) {
        other.position = FMODGMS_Chan_Get_Position(channel);
    }
}

