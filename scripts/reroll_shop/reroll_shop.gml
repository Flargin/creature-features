// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function reroll_shop(){
	with(obj_game_manager) {
	var before = [shop_list[0], shop_list[1], shop_list[2]];
	//clear out parts
	for(var i = 0; i < 3; i++)
		shop_list[i] = -1;
	
	//set new parts
	for(var i = 0; i < 3; i++) {
		var num = irandom(ds_list_size(list) - 1);
		var _part = ds_list_find_value(list, num);
		//try again if creature already has parto r was already in list before
		if(_part == head || _part == body || _part == legs || _part == tail ||
				_part == before[0] || _part == before[1] || _part == before[2] ||
				_part == shop_list[0] || _part == shop_list[1] || _part == shop_list[2] ||
				shop_list[0] != -1 && _part.type == shop_list[0].type || shop_list[1] != -1 && _part.type == shop_list[1].type || shop_list[2] != -1 && _part.type == shop_list[2].type) {
			i--;
			continue;
		}
		
		shop_list[i] = _part;
	}
	
	if(shop) {
		with(obj_menu_button)
			if(part != -1)
				instance_destroy();
		//three part options
		for(var i = -1; i < 2; i++) {
			if(shop_list[i + 1] != -1) {
				with(instance_create_depth(0, 0, depth - 100, obj_menu_button)) {
					//set positioning
					image_xscale = 4.3125;
					image_yscale = 6;
					x = (room_width / 2) - (sprite_width / 2) + (sprite_width + 32) * i;
					y = 64;
					
					//manage shop list
					part = other.shop_list[i + 1];
					idx = i;
					shop = true;
				}
			}
		}
	}
	
	}
	
}