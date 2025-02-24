draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_set_font(fnt_debug);

draw_self();
draw_text(x + sprite_width / 2, y + sprite_height / 2, text);


draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_set_color(c_white);

if(sprite != -1) {
	draw_sprite(sprite, 0, x, y);
}

if(held)
	image_blend = c_gray;
else
	image_blend = c_white;