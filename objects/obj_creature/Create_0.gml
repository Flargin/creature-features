x_vel = 0; //determines the x velocity
y_vel = 0; //determines the y velocity
grav = 0.5; //strength of gravity
last_h = 0;
hor_move = 0;

randomize();

image_blend = make_color_rgb(irandom(255), irandom(255), irandom(255));

body_parts();

head = choose(fish_head, squirrel_head, rabbit_head);
body = choose(fish_body, squirrel_body, rabbit_body);
legs = choose(fish_legs, squirrel_legs, rabbit_legs);
tail = choose(fish_tail, squirrel_tail, rabbit_tail);

land_speed = head.l_spd + body.l_spd + legs.l_spd + tail.l_spd;
water_speed = head.w_spd + body.w_spd + legs.w_spd + tail.w_spd;
climb_speed = head.c_spd + body.c_spd + legs.c_spd + tail.c_spd;
glide_speed = head.g_spd + body.g_spd + legs.g_spd + tail.g_spd;
glide_hover = body.g || tail.g;
