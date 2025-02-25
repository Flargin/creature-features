
function set_part(part){
	switch(part.type) {
		case "head":
			obj_game_manager.head = part;
		break;
		
		case "body":
			obj_game_manager.body = part;
		break;
		
		case "legs":
			obj_game_manager.legs = part;
		break;
		
		case "tail":
			obj_game_manager.tail = part;
		break;
	}
}