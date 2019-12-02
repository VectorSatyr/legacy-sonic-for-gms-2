/// @description Resumes all audio (including FMOD)
with (GMSAudioSystem) {
    audio_resume_all();
}

with (FMODAudioSystem) {
    FMODGMS_Chan_ResumeChannel(channel);
}
