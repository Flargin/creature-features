if(keyboard_check_pressed(ord("R")))
	room_restart();

if(room == rm_garden) {
	if(shop) {
		if(shop_initiate) {
			for(var i = 0; i < 3; i++) {
				with(instance_create_depth(0, 0, depth - 100, obj_menu_button)) {
					x = 16 + i*(room_width - 32)/4
					y = 16;
					image_xscale = (room_width - 32) / (4 * sprite_get_width(spr_menu_button));
					image_yscale = (room_height - 32) / sprite_get_height(spr_menu_button);
				}
			}
			shop_initiate = false;
		}
		
	}
}