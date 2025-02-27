var legs_frames = max(sprite_get_number(obj_game_manager.legs.sprite), 5);
legs_animate += x_vel * 2 / 60;
if(legs_animate > legs_frames - 1)
	legs_animate = 0;
var body_bob = sin(2*pi*legs_animate / (legs_frames));
var other_bob = sin((2*pi*legs_animate - 3) / (legs_frames));

if(obj_game_manager.legs.sprite != -1)
	draw_sprite_ext(obj_game_manager.legs.sprite, legs_animate, x, y, image_xscale, image_yscale, image_angle, c_white, 1);
if(obj_game_manager.body.sprite != -1)
	draw_sprite_ext(obj_game_manager.body.sprite, 0, x + obj_game_manager.legs.legs_body[0] * image_xscale, y + obj_game_manager.legs.legs_body[1] + body_bob, image_xscale, image_yscale, image_angle, c_white, 1);
if(obj_game_manager.head.sprite != -1)
	draw_sprite_ext(obj_game_manager.head.sprite, 0, x + (obj_game_manager.body.body_head[0] + obj_game_manager.legs.legs_body[0]) * image_xscale, y + obj_game_manager.body.body_head[1] + obj_game_manager.legs.legs_body[1] + other_bob, image_xscale, image_yscale, image_angle, c_white, 1);
if(obj_game_manager.tail.sprite != -1)
	draw_sprite_ext(obj_game_manager.tail.sprite, 0, x + (obj_game_manager.body.body_tail[0] + obj_game_manager.legs.legs_body[0]) * image_xscale, y + obj_game_manager.body.body_tail[1] + obj_game_manager.legs.legs_body[1] + other_bob, image_xscale, image_yscale, image_angle, c_white, 1);

