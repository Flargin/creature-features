x_vel = 0; //determines the x velocity
y_vel = 0; //determines the y velocity
grav = 0.5; //strength of gravity
last_h = 0;
hor_move = 0;
angle = 0;

randomize();


image_blend = make_color_rgb(irandom(255), irandom(255), irandom(255));

calculate_stats();

legs_animate = 0;
tail_animate = 0;