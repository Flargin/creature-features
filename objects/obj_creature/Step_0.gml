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

if(room != rm_garden) {

	

	x_vel = 1;

	var inst = instance_place(x, y + 1, obj_tile);

	if(instance_exists(inst)) {
		if(inst == obj_tile_land || inst == obj_tile_climb) {
			x_vel = land_speed;
		} else if(inst == obj_tile_water) {
			x_vel = water_speed;
		} 
	} else if(glide_hover && y_vel > 0) {
		x_vel = glide_speed;
		y_vel = 1;
	}

	inst = instance_place(x + 1, y, obj_tile);

	if(instance_exists(inst)) {
		if(inst == obj_tile_climb) {
			y_vel = -climb_speed;
		}
	}

} else {
	var num = random_range(0, 100);
	if(num < 50) x_vel -= sign(x_vel) * .25;
	else if(num < 75) x_vel += .5;
	else if(num < 99) x_vel -= .5;
	else if(num < 100) y_vel = -3;
	
	x_vel = clamp(x_vel, -5, 5);
}

//calculations
calculate_stats();