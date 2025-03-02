
shader_set(shd_blur);

shader_set_uniform_f(shader_get_uniform(shd_blur, "texture_size"), room_width, room_height);
shader_set_uniform_f(shader_get_uniform(shd_blur, "blur_radius"), 2.0 + sin(current_time / 1000.0));


draw_sprite(spr_spooky_cave, 0, obj_camera.x - obj_camera.cam_width / 2, obj_camera.y - obj_camera.cam_height / 2);

shader_reset();