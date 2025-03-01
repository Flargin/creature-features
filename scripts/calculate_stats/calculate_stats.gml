// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function calculate_stats(){
	with(obj_game_manager) {
	other.land_speed = max(5,
		(10 + head.l_spd + body.l_spd + legs.l_spd + tail.l_spd) * 
		((head.l_per / 100) + (body.l_per / 100) + (legs.l_per / 100) + (tail.l_per / 100) + 1)
	) / 5;
	
	other.water_speed = max(5,
		(10 + head.w_spd + body.w_spd + legs.w_spd + tail.w_spd) * 
		((head.w_per / 100) + (body.w_per / 100) + (legs.w_per / 100) + (tail.w_per / 100) + 1)
	) / 5;
	
	other.climb_speed = max(5,
		(10 + head.c_spd + body.c_spd + legs.c_spd + tail.c_spd) * 
		((head.c_per / 100) + (body.c_per / 100) + (legs.c_per / 100) + (tail.c_per / 100) + 1)
	) / 5;
	
	other.air_speed = max(5,
		(10 + head.a_spd + body.a_spd + legs.a_spd + tail.a_spd) * 
		((head.a_per / 100) + (body.a_per / 100) + (legs.a_per / 100) + (tail.a_per / 100) + 1)
	) / 5;
	
	other.glide = max(5,
		(10 + head.g_spd + body.g_spd + legs.g_spd + tail.g_spd) * 
		((head.g_per / 100) + (body.g_per / 100) + (legs.g_per / 100) + (tail.g_per / 100) + 1)
	) / 5;
	
	other.glide_hover = head.g || body.g || legs.g || tail.g;
	
	}
}