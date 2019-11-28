/// @description  Draw
if (view_render[view_current]) {
    var w = surface_get_width(application_surface);
    var h = surface_get_height(application_surface);
    var color = draw_get_color();
    var previous_shader = shader_current();

    if (not surface_exists(base_surface)) {
        base_surface = surface_create(w, h);
        width = w;
        height = h;
    } else if (width != w or height != h) {
        surface_resize(base_surface, w, h);
        width = w;
        height = h;
    }
    
    var rw = w;
    var rh = h;
    
    with (GameWindow) {
        rw /= width;
        rh /= height;
    }
    
    var vx = view_get_xport(view_current) * rw;
    var vy = view_get_yport(view_current) * rh;
    var vw = view_get_wport(view_current) * rw;
    var vh = view_get_hport(view_current) * rh;
    
    surface_set_target(base_surface);
    draw_clear_alpha(image_blend, 0);
    if (flashing) {
        draw_set_color(c_white);
        draw_rectangle(vx, vy, vw, vh, false);
    } else {
        draw_surface_part_ext(application_surface, vx, vy, vw, vh, 0, 0, w / vw, h / vh, image_blend, 1);
    }
    surface_reset_target();
    
    if (not surface_exists(final_surface)) {
        final_surface = surface_create(vw, vh);
    }
    
	var cam = view_get_camera(view_current);
    var x1 = camera_get_view_x(cam);
    var y1 = camera_get_view_y(cam);
    
    surface_set_target(final_surface);
    draw_clear_alpha(image_blend, 0);
    draw_set_color(c_white);
    shader_set(shader);
    shader_set_uniform_f(u_resolution, camera_get_view_width(cam), camera_get_view_height(cam));
    shader_set_uniform_f(u_magnitude, x_magnitude, y_magnitude);
    shader_set_uniform_f(u_cycles, x_cycles, y_cycles);
    shader_set_uniform_f(u_time, cycle_time);
    texture_set_stage(u_texture, surface_get_texture(base_surface));
    with (Water) {
        draw_rectangle(bbox_left - x1, bbox_top - y1, bbox_right - x1, bbox_bottom - y1, false);
    }
    shader_reset();
    if (previous_shader != -1) {
        shader_set(previous_shader);
    }
    surface_reset_target();
    draw_surface(final_surface, x1, y1);
    draw_set_color(color);
}

