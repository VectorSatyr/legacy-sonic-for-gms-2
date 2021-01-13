/// @description Cleanup
audio_emitter_gain(audio_emitter, 0);
if (audio_emitter_exists(audio_emitter))
{
	audio_emitter_free(audio_emitter);
}