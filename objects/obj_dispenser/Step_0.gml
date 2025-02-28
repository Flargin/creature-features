if(active) {
	if(obj_creature_player.x <= -100)
		ready = true;
	
	if(ready) {
		if(apply) {
			set_part(part);
			obj_creature_player.image_alpha = 0;
			obj_creature_player.x = 108;
			obj_creature.x_vel = 0;
			apply = false;
		}
	
		image_speed = 1;
		if(image_index >= 48) {
			tuah = true;
		}
		if(image_index >= image_number - 1) {
			image_index = 0;
			image_speed = 0;
			tuah = false;
			active = false;
			apply = true;
			ready = false;
		}
	}
		
}