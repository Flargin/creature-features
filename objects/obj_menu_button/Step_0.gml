if(place_meeting(x, y, obj_cursor) && mouse_check_button_pressed(mb_left) && !disable)
	held = true;
	

if(held && place_meeting(x, y, obj_cursor) && mouse_check_button_released(mb_left) && !disable) {
	switch(text) {
		case "Start": 
			if(!instance_exists(obj_dither)) {
				with(instance_create_depth(-10, -10, depth - 10, obj_dither)) {
					in = true;
					go = rm_garden;
				}
			}
		break;
		
		case "Exit" :
			game_end();
		break;
		
		case "Shop":
			if(!obj_dispenser.active)
				obj_game_manager.shop = true;
		break;
		
		case "BEGIN":
		
			if(!instance_exists(obj_dither) && !obj_dispenser.active) {
				with(instance_create_depth(-10, -10, depth - 10, obj_dither)) {
					in = true;
					go = obj_game_manager.stages[obj_game_manager.stage - 1];
				}
			}
		break;
		
		case "Back":
			obj_game_manager.shop = false;
		break;
		
		case "Reroll":
			obj_game_manager.reroll = false;
			reroll_shop();
			instance_destroy();
		break;
	}
	
	if(part != -1) {
		with(obj_dispenser) {
			part = other.part;
			active = true;
		}
		
		obj_game_manager.shop_list[idx + 1] = -1;
		obj_game_manager.shop = false;
	}
	
}

if(!mouse_check_button(mb_left))
	held = false;
