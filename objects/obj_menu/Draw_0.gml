

if(back_pos > 1){
	draw_sprite(spr_row_back, 0, 0, back_pos);
	back_pos = lerp(back_pos, 0, .05);
} else {
	draw_sprite(spr_row_back, 0, 0, sin((c) / 10));
}

if(middle_pos > 1){
	draw_sprite(spr_row_middle, 0, 0, middle_pos);
	middle_pos = lerp(middle_pos, 0, .05);
} else {
	draw_sprite(spr_row_middle, 0, 0, cos((c) / 10));
}

if(front_pos > 1){
	draw_sprite(spr_row_front, 0, 0, front_pos);
	front_pos = lerp(front_pos, 0, .05);
} else {
	draw_sprite(spr_row_front, 0, 0, sin((c) / 10)  + 1);
}

c++;