var legs_frames = max(sprite_get_number(obj_game_manager.legs.sprite), 7);
var tail_frames = sprite_get_number(obj_game_manager.tail.sprite)
if(room == rm_garden)
	legs_animate += abs(x_vel) * 8 / 60;
else
	legs_animate += abs(x_vel) * 2 / 60;

if(legs_animate > legs_frames - 1)
	legs_animate = 0;
var body_bob = sin(2*pi*legs_animate / (legs_frames));
var other_bob = sin((2*pi*legs_animate - 3) / (legs_frames));

if(room == rm_garden)
	tail_animate += abs(x_vel) * 16 / 60;
else
	tail_animate += abs(x_vel) * 4 / 60;

if(tail_animate > tail_frames - 1)
	tail_animate = 0;
/*
if(obj_game_manager.body.sprite != -1)
	draw_sprite_ext(obj_game_manager.body.sprite, 0, x + obj_game_manager.legs.legs_body[0] * image_xscale, y + obj_game_manager.legs.legs_body[1] + body_bob, image_xscale, image_yscale, angle, c_white, image_alpha);
if(obj_game_manager.legs.sprite != -1)
	draw_sprite_ext(obj_game_manager.legs.sprite, legs_animate, x, y, image_xscale, image_yscale, angle, c_white, image_alpha);
if(obj_game_manager.head.sprite != -1)
	draw_sprite_ext(obj_game_manager.head.sprite, 0, x + (obj_game_manager.body.body_head[0] + obj_game_manager.legs.legs_body[0]) * image_xscale, y + obj_game_manager.body.body_head[1] + obj_game_manager.legs.legs_body[1] + other_bob, image_xscale, image_yscale, angle, c_white, image_alpha);
if(obj_game_manager.tail.sprite != -1)
	draw_sprite_ext(obj_game_manager.tail.sprite, tail_animate, x + (obj_game_manager.body.body_tail[0] + obj_game_manager.legs.legs_body[0]) * image_xscale, y + obj_game_manager.body.body_tail[1] + obj_game_manager.legs.legs_body[1] + body_bob, image_xscale, image_yscale, angle, c_white, image_alpha);
*/

if(obj_game_manager.body.sprite != -1) {
    var _ox = obj_game_manager.legs.legs_body[0] * image_xscale;
    var _oy = -obj_game_manager.legs.legs_body[1];
    var _rot_x = (lengthdir_x(_ox, angle) + lengthdir_x(_oy, angle + 90));
    var _rot_y = (lengthdir_y(_ox, angle) + lengthdir_y(_oy, angle + 90));
    draw_sprite_ext(obj_game_manager.body.sprite, 0, x + _rot_x, y + _rot_y + body_bob, image_xscale, image_yscale, angle, c_white, image_alpha);
}

if(obj_game_manager.legs.sprite != -1) {
    draw_sprite_ext(obj_game_manager.legs.sprite, legs_animate, x, y, image_xscale, image_yscale, angle, c_white, image_alpha);
}

if(obj_game_manager.head.sprite != -1) {
    var _ox = (obj_game_manager.body.body_head[0] + obj_game_manager.legs.legs_body[0]) * image_xscale;
    var _oy = -(obj_game_manager.body.body_head[1] + obj_game_manager.legs.legs_body[1]);
    var _rot_x = lengthdir_x(_ox, angle) + lengthdir_x(_oy, angle + 90);
    var _rot_y = lengthdir_y(_ox, angle) + lengthdir_y(_oy, angle + 90);
    draw_sprite_ext(obj_game_manager.head.sprite, 0, x + _rot_x, y + _rot_y + other_bob, image_xscale, image_yscale, angle, c_white, image_alpha);
}

if(obj_game_manager.tail.sprite != -1) {
    var _ox = (obj_game_manager.body.body_tail[0] + obj_game_manager.legs.legs_body[0]) * image_xscale;
    var _oy = -(obj_game_manager.body.body_tail[1] + obj_game_manager.legs.legs_body[1]);
    var _rot_x = lengthdir_x(_ox, angle) + lengthdir_x(_oy, angle + 90);
    var _rot_y = lengthdir_y(_ox, angle) + lengthdir_y(_oy, angle + 90);
    draw_sprite_ext(obj_game_manager.tail.sprite, tail_animate, x + _rot_x, y + _rot_y + body_bob, image_xscale, image_yscale, angle, c_white, image_alpha);
}