if(keyboard_check_pressed(ord("R")))
	room_restart();

if(keyboard_check_pressed(vk_f1))
	room = rm_stage_1;

if(room == rm_garden) {
	if(shop) {
		if(shop_initiate) {
			for(var i = 0; i < 3; i++) {
				with(instance_create_depth(0, 0, depth - 100, obj_menu_button)) {
					//set positioning
					x = 16 + i*(room_width - 32)/3
					y = 16;
					image_xscale = (room_width - 32) / (4 * sprite_get_width(spr_menu_button));
					image_yscale = (room_height - 32) / sprite_get_height(spr_menu_button);
					
					//manage shop list
					if(ds_list_size(other.shop_list) <= 0)
						for(var j = 0; j < ds_list_size(other.list); j++)
							ds_list_add(other.shop_list, ds_list_find_value(other.list, j));
					var idx = random(ds_list_size(other.shop_list) - 1);
					part = ds_list_find_value(other.shop_list, idx);
					ds_list_delete(other.shop_list, idx);
					shop = true;
				}
			}
			shop_initiate = false;
		}
		
	} else { //if shop is not active
		shop_initiate = true;
		with(obj_menu_button) {
			if(shop)
				instance_destroy();
		}
	}
	
}
