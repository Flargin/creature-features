if (room != rm_garden and room != rm_main_menu) {
	audio_stop_sound(mus_normal)
	audio_stop_sound(mus_race)
	audio_stop_sound(mus_race2)
	audio_stop_sound(mus_racecat)
	audio_stop_sound(mus_racecdm)
	
	if (room == rm_stage_2) {
		audio_play_sound(mus_race2, 1, true)	
	} else if (room == rm_stage_3) {
		audio_play_sound(mus_racecat, 1, true)	
	} else if (room == rm_stage_5) {
		audio_play_sound(mus_racecdm, 1, true)	
	} else {
		audio_play_sound(mus_race, 1, true)	
	}	
} else if (not audio_is_playing(mus_normal)) {
	audio_stop_sound(mus_race)
	audio_stop_sound(mus_race2)
	audio_stop_sound(mus_racecat)
	audio_stop_sound(mus_racecdm)
	audio_play_sound(mus_normal, 1, true)	
}