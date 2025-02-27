if(follow != noone){
	x_to = follow.x;
	y_to = follow.y;
}


//lerps the camera towards its target
x += (x_to - x) / cam_lerp;
y += (y_to - y) / cam_lerp;

//x = clamp(x, cam_width/2, room_width - cam_width/2);
y = min(y, cam_height / 2);

camera_set_view_pos(view_camera[0], x - (cam_width * 0.5), y - (cam_height * 0.5));