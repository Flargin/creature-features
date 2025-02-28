draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_set_font(fnt_debug);

draw_self();
draw_text(x + sprite_width / 2, y + sprite_height / 2, text);



draw_set_color(c_white);

if(part != -1) {
	var height = 16;
	
	draw_text(x + sprite_width / 2, y + height, part.name);
	
	height += 24;
	
	if(part.sprite != -1) {
		draw_sprite_pos(part.sprite, 0,
			x + sprite_width / 2 - sprite_get_width(part.sprite) / 2, y + height,
			x + sprite_width / 2 + sprite_get_width(part.sprite) / 2, y + height,
			x + sprite_width / 2 + sprite_get_width(part.sprite) / 2, y + height + sprite_get_height(part.sprite),
			x + sprite_width / 2 - sprite_get_width(part.sprite) / 2, y + height + sprite_get_height(part.sprite), 1);
			
		height += sprite_get_height(part.sprite) + 16;
	} else {
		height += 32 + 16;
	}
	
	
	draw_set_font(fnt_description);
	var text_height = 16
	
	if(part.w_spd != 0) {
		draw_text(x + sprite_width / 2, y + height, "+" + string(part.w_spd) + " Water Speed");
		height += text_height;
	}
	
	if(part.l_spd != 0) {
		draw_text(x + sprite_width / 2, y + height, "+" + string(part.l_spd) + " Land Speed");
		height += text_height;
	}
	
	if(part.c_spd != 0) {
		draw_text(x + sprite_width / 2, y + height, "+" + string(part.c_spd) + " Climb Speed");
		height += text_height;
	}
	
	if(part.a_spd != 0) {
		draw_text(x + sprite_width / 2, y + height, "+" + string(part.a_spd) + " Air Speed");
		height += text_height;
	}
	
	if(part.g_spd != 0) {
		draw_text(x + sprite_width / 2, y + height, "+" + string(part.g_spd) + " Glide");
		height += text_height;
	}
	
	if(part.w_per != 0) {
		draw_text(x + sprite_width / 2, y + height, "+" + string(part.w_per) + "% Water Speed");
		height += text_height;
	}
	
	if(part.l_per != 0) {
		draw_text(x + sprite_width / 2, y + height, "+" + string(part.l_per) + "% Land Speed");
		height += text_height;
	}
	
	if(part.c_per != 0) {
		draw_text(x + sprite_width / 2, y + height, "+" + string(part.c_per) + "% Climb Speed");
		height += text_height;
	}
	
	if(part.a_per != 0) {
		draw_text(x + sprite_width / 2, y + height, "+" + string(part.a_per) + "% Air Speed");
		height += text_height;
	}
	
	if(part.g_per != 0) {
		draw_text(x + sprite_width / 2, y + height, "+" + string(part.g_per) + "% Glide");
		height += text_height;
	}

	if(part.g) {
		draw_text(x + sprite_width / 2, y + height, "Can Glide");
		height += text_height;
	}
	draw_set_font(fnt_debug);
}


draw_set_valign(fa_top);
draw_set_halign(fa_left);


if(held)
	image_blend = c_gray;
else
	image_blend = c_white;