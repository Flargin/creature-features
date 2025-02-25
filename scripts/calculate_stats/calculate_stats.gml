// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function calculate_stats(){
	with(obj_game_manager) {
	other.land_speed = max(5,
		
		(10 + head.l_spd + body.l_spd + legs.l_spd + tail.l_spd) * 
		((head.l_per / 100) + 1 + (body.l_per / 100) + 1 + (legs.l_per / 100) + 1 + (tail.l_per / 100) + 1)
	);
	
	other.water_speed = max(5,
		(10 + head.w_spd + body.w_spd + legs.w_spd + tail.w_spd) * 
		((head.w_per / 100) + 1 + (body.w_per / 100) + 1 + (legs.w_per / 100) + 1 + (tail.w_per / 100) + 1)
	);
	
	other.climb_speed = max(5,
		(10 + head.c_spd + body.c_spd + legs.c_spd + tail.c_spd) * 
		((head.c_per / 100) + 1 + (body.c_per / 100) + 1 + (legs.c_per / 100) + 1 + (tail.c_per / 100) + 1)
	);
	
	other.glide_speed = head.g_spd + body.g_spd + legs.g_spd + tail.g_spd;
	other.glide_hover = body.g || tail.g;
	}
}