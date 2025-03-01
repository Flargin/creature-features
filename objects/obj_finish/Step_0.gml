if(!win && !lose) {
	if(place_meeting(x, y, obj_creature_player)) {
		win = true;
		obj_game_manager.stage++;
		room = rm_garden;
	} else if(place_meeting(x, y, obj_creature))
		lose = true;
}

