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

x_vel = 1;

var inst = instance_place(x, y + 1, obj_tile);

if(instance_exists(inst)) {
	if(inst.sprite_index == spr_grass_debug || inst.sprite_index == spr_hill_debug) {
		x_vel = land_speed;
	} else if(inst.sprite_index == spr_water_debug) {
		x_vel = water_speed;
	} 
} else if(glide && y_vel > 0) {
	x_vel = glide_speed;
	y_vel = glide_hover;
}

inst = instance_place(x + 1, y, obj_tile);

if(instance_exists(inst)) {
	if(inst.sprite_index == spr_hill_debug) {
		y_vel = -climb_speed;
	}
}
