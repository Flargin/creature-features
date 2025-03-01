var count = 0;

with(obj_fish_glow) {
	other.circle_pos[count*2] = x - (obj_camera.x - obj_camera.cam_width / 2);
	other.circle_pos[count*2 + 1] = y - (obj_camera.y - obj_camera.cam_height / 2) - 5;
	other.circle_radius[count] = 30;
	count++;
}

with(obj_finish) {
	other.circle_pos[count*2] = x - (obj_camera.x - obj_camera.cam_width / 2);
	other.circle_pos[count*2 + 1] = y - (obj_camera.y - obj_camera.cam_height / 2);
	other.circle_radius[count] = 100;
	count++;
}

with(obj_creature) {
	other.circle_pos[count*2] = x - (obj_camera.x - obj_camera.cam_width / 2);
	other.circle_pos[count*2 + 1] = y - (obj_camera.y - obj_camera.cam_height / 2);
	other.circle_radius[count] = 60;
	count++;
}

if(!surface_exists(surf)) {
	surf = surface_create(room_width, room_height);
}

surface_set_target(surf);
draw_clear_alpha(c_black, 0);

var c = c_black;

draw_set_alpha(1);
draw_surface(application_surface, 0, 0); // Draw at (0,0)

draw_set_alpha(dark_lerp)
draw_set_color(c_black)
draw_rectangle(0,0,room_width,room_height,false)
draw_set_color(c_white)

draw_set_alpha(1);

surface_reset_target();


shader_set(shd_glow);

var circlePos = shader_get_uniform(shd_glow, "circlePos");
var circleRadius = shader_get_uniform(shd_glow, "circleRadius");
var circleCount = shader_get_uniform(shd_glow, "circleCount");
var screenSize = shader_get_uniform(shd_glow, "screenSize");

shader_set_uniform_f_array(circlePos, circle_pos);
shader_set_uniform_f_array(circleRadius, circle_radius);
shader_set_uniform_i(circleCount, count);
shader_set_uniform_f_array(screenSize, [room_width, room_height]);

draw_surface(surf, obj_camera.x - obj_camera.cam_width / 2, obj_camera.y - obj_camera.cam_height / 2);

shader_reset();