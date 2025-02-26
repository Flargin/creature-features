var legs_frames = sprite_get_number(obj_game_manager.legs.sprite);
legs_animate += x_vel * 2 / 60;
if(legs_animate > legs_frames - 1)
	legs_animate = 0;
var body_bob = sin(2*pi*legs_animate / (legs_frames));
var other_bob = sin((2*pi*legs_animate - 3) / (legs_frames));

if(obj_game_manager.legs.sprite != -1)
	draw_sprite_ext(obj_game_manager.legs.sprite, legs_animate, x, y, image_xscale, image_yscale, image_angle, c_white, 1);
if(obj_game_manager.body.sprite != -1)
	draw_sprite_ext(obj_game_manager.body.sprite, 0, x, y-6 + body_bob*2, image_xscale, image_yscale, image_angle, c_white, 1);
if(obj_game_manager.head.sprite != -1)
	draw_sprite_ext(obj_game_manager.head.sprite, 0, x + 14 * image_xscale, y-13 + other_bob*2, image_xscale, image_yscale, image_angle, c_white, 1);
if(obj_game_manager.tail.sprite != -1)
	draw_sprite_ext(obj_game_manager.tail.sprite, 0, x - 18 * image_xscale, y-15 + other_bob*2, image_xscale, image_yscale, image_angle, c_white, 1);




///DEBUG

draw_text(0, 0, "Land Speed: " + string(land_speed));
draw_text(0, 20, "Water Speed: " + string(water_speed));
draw_text(0, 40, "Climb Speed: " + string(climb_speed));
