
if(!surface_exists(surf)) {
	surf = surface_create(room_width, room_height);
}

surface_set_target(surf);
draw_clear_alpha(c_black, 0);

draw_set_color(c_white)
draw_rectangle(0, 0, room_width, room_height, false);
//draw_rectangle_color(0,0,room_width,room_height,c_blue,c_red,c_green,c_yellow,false)
draw_set_color(c_white)


surface_reset_target();


shader_set(shd_space);

shader_set_uniform_f(shader_get_uniform(shd_space, "spin_totation_speed"), 2.0);
shader_set_uniform_f(shader_get_uniform(shd_space, "move_speed"), 3.0);
shader_set_uniform_f(shader_get_uniform(shd_space, "offset"), 0.0, 0.0);
shader_set_uniform_f(shader_get_uniform(shd_space, "colour_1"), 5.0 / 255.0, 20.0 / 255.0, 39.0 / 255.0, 1.0);
shader_set_uniform_f(shader_get_uniform(shd_space, "colour_2"), 248.0 / 255.0, 188.0 / 255.0, 4.0 / 255.0, 1.0);
shader_set_uniform_f(shader_get_uniform(shd_space, "colour_3"), 0.0, 0.0, 0.0, 1.0);
shader_set_uniform_f(shader_get_uniform(shd_space, "contrast"), 7.5);
shader_set_uniform_f(shader_get_uniform(shd_space, "lighting"), 0.2);
shader_set_uniform_f(shader_get_uniform(shd_space, "spin_amount"), 0.0005);
shader_set_uniform_f(shader_get_uniform(shd_space, "pixel_filter"), 7400.0);
shader_set_uniform_i(shader_get_uniform(shd_space, "is_rotating"), true);
shader_set_uniform_f(shader_get_uniform(shd_space, "texture_size"), room_width, room_height);
shader_set_uniform_f(shader_get_uniform(shd_space, "iTime"), current_time / 1000.0);

draw_surface(surf, obj_camera.x - obj_camera.cam_width / 2, obj_camera.y - obj_camera.cam_height / 2);

shader_reset();

draw_circle_color(obj_camera.x, obj_camera.y, 60, c_black, #050505, false);
