if(place_meeting(x, y, obj_cursor) && mouse_check_button_pressed(mb_left))
	held = true;
	

if(held && place_meeting(x, y, obj_cursor) && mouse_check_button_released(mb_left)) {
	switch(text) {
		case "Start": 
			room = rm_garden;
		break;
		
		case "Exit" :
			game_end();
		break;
		
		case "Shop":
			obj_game_manager.shop = true;
		break;
	}
}

if(!mouse_check_button(mb_left))
	held = false;
