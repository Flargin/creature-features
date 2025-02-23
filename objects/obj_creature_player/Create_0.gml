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

repeat 5 {
	instance_create_depth(x, y, depth, obj_creature);
}