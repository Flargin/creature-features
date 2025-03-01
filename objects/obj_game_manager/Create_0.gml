shop = false;
shop_initiate = true;
depth = -1;
randomize();

//player creature creation
list = ds_list_create();
body_parts(list);

shop_list = array_create(3, -1);
reroll_shop();
reroll = true;

player_begin = false;

//stage setup
stage = 1;
stages =
[
	rm_stage_1,
	rm_stage_2,
	rm_stage_3,
];





///DEBUG
debug = false;
//show_debug_overlay(true);