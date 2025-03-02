if (room != rm_garden and room != rm_main_menu and not audio_is_playing(mus_race)) {
	audio_stop_sound(mus_normal)
	audio_play_sound(mus_race, 1, true)
} else if (not audio_is_playing(mus_normal)) {
	audio_stop_sound(mus_race)
	audio_play_sound(mus_normal, 1, true)	
}