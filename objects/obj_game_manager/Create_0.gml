shop = false;
shop_initiate = true;
depth = -1;
randomize();

//player creature creation
list = ds_list_create();
body_parts(list);

//parts used by other creatures
other_parts = {
	head: [
		[gloop_head, fish_head, gloop_head, d9_head, d9_head],
		[squirrel_head, yeti_head, dinosaur_head, squirrel_head, bull_head],
		[gloop_head, gloop_head, rabbit_head, rabbit_head, yeti_head]
	],
	
	body: [
		[gloop_body, gloop_body, whale_body, fish_body, pegasus_body],
		[squirrel_body, fish_body, gloop_body, fish_body, anvil_body],
		[gloop_body, jetplane_body, gloop_body, rabbit_body, jetplane_body]
	],
	
	legs: [
		[squirrel_legs, squirrel_legs, sleipnir_legs, steampunk_legs, spider_legs],
		[gloop_legs, gloop_legs, fish_legs, cthulu_legs, sleipnir_legs],
		[gloop_legs, squirrel_legs, dolphin_legs, steampunk_legs, spider_legs]
	],
	
	tail: [
		[fish_tail, propeller_tail, fish_tail, gloop_tail, yinyang_tail],
		[rabbit_tail, squirrel_tail, yinyang_tail, kraken_tail, dragon_tail],
		[rabbit_tail, gloop_tail, propeller_tail, cheetah_tail, propeller_tail]
	]
}

shop_list = array_create(3, -1);
reroll_shop();
reroll = true;
points = 3;

player_begin = false;

//stage setup
stage = 1;
stages =
[
	rm_stage_1,
	rm_stage_3,
	rm_stage_2,
	rm_stage_4,
	rm_stage_5,
];





///DEBUG
debug = false;
//show_debug_overlay(true);

audio_sound_gain(mus_race, 0.5, 0)