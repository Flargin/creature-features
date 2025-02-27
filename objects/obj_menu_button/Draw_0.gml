draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_set_font(fnt_debug);

draw_self();
draw_text(x + sprite_width / 2, y + sprite_height / 2, text);


draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_set_color(c_white);

if(part != -1) {
	if(part.sprite != -1)
		draw_sprite_pos(part.sprite, 0,
			x + sprite_width / 2 - sprite_get_width(part.sprite) / 2, y + 4,
			x + sprite_width / 2 + sprite_get_width(part.sprite) / 2, y + 4,
			x + sprite_width / 2 + sprite_get_width(part.sprite) / 2, y + 4 + sprite_get_height(part.sprite),
			x + sprite_width / 2 - sprite_get_width(part.sprite) / 2, y + 4 + sprite_get_height(part.sprite), 1);
		//draw_sprite(part.sprite, 0, x + sprite_width / 2 - sprite_get_width(part.sprite) / 2, y + 4);		
}

if(held)
	image_blend = c_gray;
else
	image_blend = c_white;