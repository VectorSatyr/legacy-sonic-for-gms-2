/// @description  Apply shader
if (shader_current() != shader) {
    previous_shader = shader_current();
    shader_set(shader);
    var uniform = shader_get_uniform(shader, "u_fTransition");
    shader_set_uniform_f(uniform, transition);
}

