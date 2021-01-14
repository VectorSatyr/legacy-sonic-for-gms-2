/// @description Initialize
length = room_width - 224;
y_speed = 0;
timer = 240;
warning_step = 60;

audio_emitter = audio_emitter_create();
audio_emitter_position(audio_emitter, room_width / 2, y, 0);
audio_emitter_falloff(audio_emitter, CAMERA_HEIGHT / 2, CAMERA_HEIGHT, 1);
with (GameAudioConfiguration)
{
    audio_emitter_gain(other.audio_emitter, volume_sound);
}

var nodes_per_cycle = 8;
var separation = 16;
var x_radius = nodes_per_cycle * separation;
var y_radius = 16;
var x_speed = (x_radius / 2) + 2;

var total_spheres = ceil_to(length, x_radius) / separation;
for (var n = 0; n < total_spheres; ++n)
{
	sphere[n] = instance_create_layer(x + (n * separation), y, "laser", GlowingSpheresLaserSphere);
	sphere[n].timeline_position = n mod 8;
	sphere[n].owner = id;
	sphere[n].node = n;
	sphere[n].separation = separation;
	sphere[n].x_speed = x_speed;
	sphere[n].x_radius = x_radius;
	sphere[n].y_radius = y_radius;
}