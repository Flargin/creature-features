

for(var _x = 0; _x < room_width / sprite_width; _x++)
	for(var _y = 0; _y < room_height / sprite_height; _y++)
		draw_sprite(spr_dither_in, clamp((t/5 + (_x * random_range(0.04, 0.06)) + (_y * 0.05)),0,8), _x * sprite_width, _y * sprite_height) 
		
if(in)
	t++;
else
	t--;

if(in && t >= t_max) {
	room = go;
	in = false;
} else if(!in && t <= t_min)
	instance_destroy();