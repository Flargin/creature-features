if(!win && !lose) {
	if(place_meeting(x, y, obj_creature_player)) {
		win = true;
		obj_game_manager.stage++;
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

