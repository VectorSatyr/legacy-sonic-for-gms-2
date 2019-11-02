/// @description  Initialize
var handshake = FMODGMS_Util_Handshake();
show_debug_message(handshake);
if (handshake != "FMODGMS is working.") {
    instance_destroy();
} else {
    FMODGMS_Sys_Create();
    FMODGMS_Sys_Initialize(32);
    channel = FMODGMS_Chan_CreateChannel();
    sounds = ds_map_create();
    music = -1;
}

