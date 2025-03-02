/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

idx = -1;
image_blend = c_white;

if(room != rm_garden) {
	for(var i = 0; i < 3; i++) {
		with(instance_create_depth(x - 2, y, depth + 1, obj_creature)) {
			idx = i;
			calculate_stats(idx);
		}
	}
}

calculate_stats(idx);