x_vel = 0; //determines the x velocity
y_vel = 0; //determines the y velocity
grav = 0.5; //strength of gravity
last_h = 0;
hor_move = 0;

glide = irandom(1);

randomize();
land_speed = irandom_range(1, 10);
water_speed = irandom_range(1, 10);
climb_speed = irandom_range(1, 10);
glide_speed = irandom_range(1, 10);
glide_hover = random_range(.1, grav);

image_blend = make_color_rgb(irandom(255), irandom(255), irandom(255));

head = {
	w_spd: 1,
	l_spd: 1,
	c_spd: 1,
	g_spd: 1,
	ability: 0,
}

body = {
	w_spd: 1,
	l_spd: 1,
	c_spd: 1,
	g:	false,
	g_spd: 1,
	energy: 0,
}

legs = {
	w_spd: 1,
	l_spd: 1,
	c_spd: 1,
	g_spd: 1,
}

tail = {
	w_spd: 1,
	l_spd: 1,
	c_spd: 1,
	g: false,
	g_spd: 1,
}

land_speed = head.l_spd + body.l_spd + legs.l_spd + tail.l_spd;
water_speed = head.w_spd + body.w_spd + legs.w_spd + tail.w_spd;
climb_speed = head.c_spd + body.c_spd + legs.c_spd + tail.c_spd;
glide_speed = head.g_spd + body.g_spd + legs.g_spd + tail.g_spd;
glide_hover = body.g || tail.g;

