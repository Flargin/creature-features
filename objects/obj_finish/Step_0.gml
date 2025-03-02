if(!win) {
	if(place_meeting(x, y, obj_creature_player)) {
		audio_play_sound(snd_portal, 1, false)
		win = true;
		
		if(obj_game_manager.stage >= 5) {
			if(!instance_exists(obj_dither)) {
				with(instance_create_depth(-10, -10, depth - 10, obj_dither)) {
					in = true;
					go = rm_win;
				}
			}
		} else {
			obj_game_manager.stage++;
			obj_game_manager.points += 3;
			reroll_shop();
			if(!instance_exists(obj_dither)) {
				with(instance_create_depth(-10, -10, depth - 10, obj_dither)) {
					in = true;
					go = rm_garden;
				}
			}
		}
	} 
}