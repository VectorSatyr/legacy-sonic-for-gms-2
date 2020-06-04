/// @description Reset
if (shader_current() == shader)
{
	shader_reset();
	if (previous_shader != -1)
	{
	    shader_set(previous_shader);
	}
}