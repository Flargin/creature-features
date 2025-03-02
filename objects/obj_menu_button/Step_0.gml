if(place_meeting(x, y, obj_cursor) && mouse_check_button_pressed(mb_left) && !disable)
	held = true;
	

if(held && place_meeting(x, y, obj_cursor) && mouse_check_button_released(mb_left) && !disable) {	
	switch(text) {
		case "Start": 
			audio_sound_gain(snd_button, 0.5, 0)
			audio_play_sound(snd_button, 1, false)
			if(!instance_exists(obj_dither)) {
				with(instance_create_depth(-10, -10, depth - 10, obj_dither)) {
					in = true;
					go = rm_garden;
				}
			}
		break;
		
		case "Exit" :
			audio_sound_gain(snd_button, 0.5, 0)
			audio_play_sound(snd_button, 1, false)
			game_end();
		break;
		
		case "Shop":
			audio_sound_gain(snd_button, 0.5, 0)
			audio_play_sound(snd_button, 1, false)
			if(!obj_dispenser.active)
				obj_game_manager.shop = true;
		break;
		
		case "BEGIN":
			audio_sound_gain(snd_button, 0.5, 0)
			audio_play_sound(snd_button, 1, false)
			if(!instance_exists(obj_dither) && !obj_dispenser.active) {
				with(instance_create_depth(-10, -10, depth - 10, obj_dither)) {
					in = true;
					go = obj_game_manager.stages[obj_game_manager.stage - 1];
					t = -100;
				}
				audio_play_sound(snd_portal, 1, false)
				obj_game_manager.player_begin = true;
			}
		break;
		
		case "Back":
			audio_sound_gain(snd_button, 0.5, 0)
			audio_play_sound(snd_button, 1, false)
			obj_game_manager.shop = false;
		break;
		
		case "Reroll":
			audio_sound_gain(snd_button, 0.5, 0)
			audio_play_sound(snd_button, 1, false)
			obj_game_manager.reroll = false;
			reroll_shop();
			instance_destroy();
		break;
	}
	
	if(part != -1) {
		if(obj_game_manager.points < part.value) {
			audio_sound_gain(snd_buzzer, 0.5, 0)
			audio_play_sound(snd_buzzer, 1, false)
		} else {
			audio_sound_gain(snd_button, 0.5, 0)
			audio_play_sound(snd_button, 1, false)
			with(obj_dispenser) {
				part = other.part;
				active = true;
			}
			obj_game_manager.points -= part.value;
			obj_game_manager.shop_list[idx + 1] = -1;
			obj_game_manager.shop = false;
		}
	}
}

if(!mouse_check_button(mb_left))
	held = false;
