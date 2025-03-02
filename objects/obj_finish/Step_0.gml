if(!win && !lose) {
	if(place_meeting(x, y, obj_creature_player)) {
		audio_play_sound(snd_portal, 1, false)
		win = true;
		obj_game_manager.stage++;
		
		if(obj_game_manager.stage >= 6) {
			if(!instance_exists(obj_dither)) {
				with(instance_create_depth(-10, -10, depth - 10, obj_dither)) {
					in = true;
					go = rm_win;
				}
			}
		}
		
		reroll_shop();
		if(!instance_exists(obj_dither)) {
			with(instance_create_depth(-10, -10, depth - 10, obj_dither)) {
				in = true;
				go = rm_garden;
			}
		}
	} else if(place_meeting(x, y, obj_creature))
		lose = true;
}

