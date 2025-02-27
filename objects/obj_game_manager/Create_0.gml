shop = false;
shop_initiate = true;
depth = -1;
randomize();

//player creature creation
list = ds_list_create();


body_parts(list);

shop_list = ds_list_create();
for(var i = 0; i < ds_list_size(list); i++)
	ds_list_add(shop_list, ds_list_find_value(list, i));


//stage setup
stage = 1;
stages =
[
	rm_stage_1,
	rm_stage_2,
	rm_stage_3,
];

dither_progress = 0;

show_debug_overlay(true);