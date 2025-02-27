if(place_meeting(x, y, obj_cursor) && mouse_check_button_pressed(mb_left))
	held = true;
	

if(held && place_meeting(x, y, obj_cursor) && mouse_check_button_released(mb_left)) {
	switch(text) {
		case "Start": 
			if(!instance_exists(obj_dither)) {
				with(instance_create_depth(-10, -10, depth, obj_dither)) {
					in = true;
					go = rm_garden;
				}
			}
		break;
		
		case "Exit" :
			game_end();
		break;
		
		case "Shop":
			obj_game_manager.shop = true;
		break;
		
		case "BEGIN":
			with(obj_game_manager)
				room = stages[stage - 1];
		break;
	}
	
	if(part != -1) {
		set_part(part);
		obj_game_manager.shop = false;
	}
	
}

if(!mouse_check_button(mb_left))
	held = false;
