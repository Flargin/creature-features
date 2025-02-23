if(!win && !lose) {
	if(place_meeting(x, y, obj_creature_player))
		win = true;
	else if(place_meeting(x, y, obj_creature))
		lose = true;
}

