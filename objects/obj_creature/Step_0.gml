//if this object is about to go inside of a tile on the x plane, move it out 
if (place_meeting(x + x_vel, y, obj_tile)){
    while(!place_meeting(x + sign(x_vel), y , obj_tile) && (sign(x_vel) != 0)){
        x += sign(x_vel);
    }
	
    x_vel = 0;
}

x += x_vel; //adds the x velocity to the x position of the object


//if this object is about to go inside of a tile on the y plane, move it out 
if (place_meeting(x, y + y_vel, obj_tile)){
    while (!place_meeting(x, y + sign(y_vel), obj_tile) && (sign(y_vel) != 0)){
        y += sign(y_vel);
    }
	
    y_vel = 0;
}

y += y_vel; // adds the y velocity to the y position of the object

//gravity
y_vel += grav;

if(x_vel > 0)
	image_xscale = 1;
else if(x_vel < 0)
	image_xscale = -1;

if(room != rm_garden) {
	
	x_vel = 1;
	
	var inst = instance_place(x, y + 1, obj_tile);

	if(instance_exists(inst)) {
		if(inst.type == "land" || inst.type == "climb") {
			x_vel = land_speed;
		} else if(inst.type == "water") {
			x_vel = water_speed;
		} 
	} else if(glide_hover && y_vel > 0 && angle == 0) {
		x_vel = air_speed;
		y_vel = 5 / glide;
	}

	inst = instance_place(x + 1, y, obj_tile);

	if(instance_exists(inst)) {
		y_vel = -climb_speed;
	}
	
	if(place_meeting(x, y, obj_finish)) {
		image_alpha -= .04;
		x_vel += sign(obj_finish.x - x);
	}
} else {
	if(obj_dispenser.active && image_alpha >= 1 && !obj_dispenser.ready) {
		x_vel = -4;
	} else if(obj_dispenser.active && obj_dispenser.tuah) {
		image_alpha += 1/11;
	} else if(obj_game_manager.player_begin) { 
		x_vel = 3;
	} else if(image_alpha >= 1) {
		var num = random_range(-(x - room_width / 2) / 16 , 100 + (room_width / 2 - x) / 16);
		if(num < 51 && num > 50 && place_meeting(x, y + 1, obj_tile)) y_vel = -3;
		else if(num < 5) x_vel -= .5;
		else if(num > 95) x_vel += .5;
		else if(num >= 5 && num <= 95) x_vel -= sign(x_vel) * (1/16);
	
		x_vel = clamp(x_vel, -5, 5);
	}
}

//ROTATION
if(place_meeting(x + 32, y, obj_tile)) {
	angle += 6;
} else {
	angle -= 6;
}
angle = clamp(angle, 0, 90);

//calculations
calculate_stats();
