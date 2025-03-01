if(keyboard_check_pressed(ord("R")))
	room_restart();
	
	
if(room == rm_garden) {
	if(shop) {
		if(shop_initiate) {
			with(obj_menu_button)
				disable = true;
			
			//back button
			with(instance_create_depth(0, 0, depth - 100, obj_menu_button)) {
				//set positioning
				image_xscale = 2;
				image_yscale = 1;
				x = 16;
				y = 16;
				
				shop = true;
				text = "Back";
			}
			
			//reroll button
			if(reroll) {
				with(instance_create_depth(0, 0, depth - 100, obj_menu_button)) {
					//set positioning
					image_xscale = 2;
					image_yscale = 1;
					x = room_width - sprite_width - 16;
					y = 16;
				
					shop = true;
					text = "Reroll";
				}
			}
			
			
			//three part options
			for(var i = -1; i < 2; i++) {
				if(shop_list[i + 1] != -1) {
					with(instance_create_depth(0, 0, depth - 100, obj_menu_button)) {
						//set positioning
						image_xscale = 4.3125;
						image_yscale = 6;
						x = (room_width / 2) - (sprite_width / 2) + (sprite_width + 32) * i;
						y = 64;
					
						//manage shop list
						part = other.shop_list[i + 1];
						idx = i;
						shop = true;
					}
				}
			}
		}
		shop_initiate = false;
		
	} else { //if shop is not active
		shop_initiate = true;
		with(obj_menu_button) {
			if(shop)
				instance_destroy();
			disable = false;
		}
	}
	
}

///DEBUG
if(keyboard_check_pressed(vk_f1))
	reroll_shop();