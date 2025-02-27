function body_parts(_list){
#region VARIBALES THAT AFFECT STATS
	head = {
		type: "head", // part type
		sprite: -1, // sprite
		w_spd: 0, // water speed
		l_spd: 0, // land speed
		c_spd: 0, // climb speed
		g_spd: 0, // glide speed
		a_spd: 0, // air speed
		w_per: 0, // water % speed
		l_per: 0, // land % speed
		c_per: 0, // climb % speed
		g_per: 0, // glide % speed
		a_per: 0, // air % speed
		g:	false, // can glide
		ability: -1, // ability ID ( -1 means no ability )
	}

	body = {
		type: "body", // part type
		sprite: -1, // sprite
		body_tail: [0, 0], // anchor point for tail [x, y]
		body_head: [0, 0], // anchor point for head [x, y]
		w_spd: 0, // water speed
		l_spd: 0, // land speed
		c_spd: 0, // climb speed
		g_spd: 0, // glide speed
		a_spd: 0, // air speed
		w_per: 0, // water % speed
		l_per: 0, // land % speed
		c_per: 0, // climb % speed
		g_per: 0, // glide % speed
		a_per: 0, // air % speed
		g:	false, // can glide
		ability: -1, // ability ID ( -1 means no ability )
	}

	legs = {
		type: "legs", // part type
		sprite: -1, // sprite
		legs_body: [0, 0], //anchor point for body [x,y]
		w_spd: 0, // water speed
		l_spd: 0, // land speed
		c_spd: 0, // climb speed
		g_spd: 0, // glide speed
		a_spd: 0, // air speed
		w_per: 0, // water % speed
		l_per: 0, // land % speed
		c_per: 0, // climb % speed
		g_per: 0, // glide % speed
		a_per: 0, // air % speed
		g:	false, // can glide
		ability: -1, // ability ID ( -1 means no ability )
	}

	tail = {
		type: "tail", // part type
		sprite: -1, // sprite
		w_spd: 0, // water speed
		l_spd: 0, // land speed
		c_spd: 0, // climb speed
		g_spd: 0, // glide speed
		a_spd: 0, // air speed
		w_per: 0, // water % speed
		l_per: 0, // land % speed
		c_per: 0, // climb % speed
		g_per: 0, // glide % speed
		a_per: 0, // air % speed
		g:	false, // can glide
		ability: -1, // ability ID ( -1 means no ability )
	}
	
#endregion
	
/// INDIVIDUAL BODY PARTS
	
#region Head Parts
	fish_head = {
		type: "head", // part type
		sprite: spr_fish_head, // sprite
		w_spd: 0, // water speed
		l_spd: 0, // land speed
		c_spd: 0, // climb speed
		g_spd: 0, // glide speed
		a_spd: 0, // air speed
		w_per: 0, // water % speed
		l_per: 0, // land % speed
		c_per: 0, // climb % speed
		g_per: 0, // glide % speed
		a_per: 0, // air % speed
		g:	false, // can glide
		ability: -1, // ability ID ( -1 means no ability )
	}
	ds_list_add(_list, fish_head);
	
	squirrel_head = {
		type: "head", // part type
		sprite: spr_squirrel_head, // sprite
		w_spd: 0, // water speed
		l_spd: 0, // land speed
		c_spd: 0, // climb speed
		g_spd: 0, // glide speed
		a_spd: 0, // air speed
		w_per: 0, // water % speed
		l_per: 0, // land % speed
		c_per: 0, // climb % speed
		g_per: 0, // glide % speed
		a_per: 0, // air % speed
		g:	false, // can glide
		ability: -1, // ability ID ( -1 means no ability )
	}
	ds_list_add(_list, squirrel_head);
	
	rabbit_head = {
		type: "head", // part type
		sprite: spr_rabbit_head, // sprite
		w_spd: 0, // water speed
		l_spd: 0, // land speed
		c_spd: 0, // climb speed
		g_spd: 0, // glide speed
		a_spd: 0, // air speed
		w_per: 0, // water % speed
		l_per: 0, // land % speed
		c_per: 0, // climb % speed
		g_per: 0, // glide % speed
		a_per: 0, // air % speed
		g:	false, // can glide
		ability: -1, // ability ID ( -1 means no ability )
	}
	ds_list_add(_list, rabbit_head);
	
	
	bull_head = {
		type: "head", // part type
		sprite: spr_bull_head, // sprite
		w_spd: 0, // water speed
		l_spd: 0, // land speed
		c_spd: 0, // climb speed
		g_spd: 0, // glide speed
		a_spd: 0, // air speed
		w_per: 0, // water % speed
		l_per: 0, // land % speed
		c_per: 0, // climb % speed
		g_per: 0, // glide % speed
		a_per: 0, // air % speed
		g:	false, // can glide
		ability: -1, // ability ID ( -1 means no ability )
	}
	ds_list_add(_list, bull_head);
	
	dinosaur_head = {
		type: "head", // part type
		sprite: spr_dinosaur_head, // sprite
		w_spd: 0, // water speed
		l_spd: 0, // land speed
		c_spd: 0, // climb speed
		g_spd: 0, // glide speed
		a_spd: 0, // air speed
		w_per: 0, // water % speed
		l_per: 0, // land % speed
		c_per: 0, // climb % speed
		g_per: 0, // glide % speed
		a_per: 0, // air % speed
		g:	false, // can glide
		ability: -1, // ability ID ( -1 means no ability )
	}
	ds_list_add(_list, dinosaur_head);
	
	yeti_head = {
		type: "head", // part type
		sprite: spr_yeti_head, // sprite
		w_spd: 0, // water speed
		l_spd: 0, // land speed
		c_spd: 0, // climb speed
		g_spd: 0, // glide speed
		a_spd: 0, // air speed
		w_per: 0, // water % speed
		l_per: 0, // land % speed
		c_per: 0, // climb % speed
		g_per: 0, // glide % speed
		a_per: 0, // air % speed
		g:	false, // can glide
		ability: -1, // ability ID ( -1 means no ability )
	}
	ds_list_add(_list, yeti_head);

#endregion

#region Body Parts

	fish_body = {
		type: "body", // part type
		sprite: spr_fish_body, // sprite
		body_tail: [-19, -6], // anchor point for tail [x, y]
		body_head: [16, -6], // anchor point for head [x, y]
		w_spd: 5, // water speed
		l_spd: 0, // land speed
		c_spd: 0, // climb speed
		g_spd: 0, // glide speed
		a_spd: 0, // air speed
		w_per: 0, // water % speed
		l_per: 0, // land % speed
		c_per: 0, // climb % speed
		g_per: 0, // glide % speed
		a_per: 0, // air % speed
		g:	false, // can glide
		ability: -1, // ability ID ( -1 means no ability )
	}
	ds_list_add(_list, fish_body);
	
	squirrel_body = {
		type: "body", // part type
		sprite: spr_squirrel_body, // sprite
		body_tail: [-9, -6], // anchor point for tail [x, y]
		body_head: [10, -9], // anchor point for head [x, y]
		w_spd: 0, // water speed
		l_spd: 0, // land speed
		c_spd: 5, // climb speed
		g_spd: 0, // glide speed
		a_spd: 0, // air speed
		w_per: 0, // water % speed
		l_per: 0, // land % speed
		c_per: 0, // climb % speed
		g_per: 0, // glide % speed
		a_per: 0, // air % speed
		g:	false, // can glide
		ability: -1, // ability ID ( -1 means no ability )
	}
	ds_list_add(_list, squirrel_body);
	
	rabbit_body = {
		type: "body", // part type
		sprite: spr_rabbit_body, // sprite
		body_tail: [-11, -6], // anchor point for tail [x, y]
		body_head: [10, -7], // anchor point for head [x, y]
		w_spd: 0, // water speed
		l_spd: 5, // land speed
		c_spd: 0, // climb speed
		g_spd: 0, // glide speed
		a_spd: 0, // air speed
		w_per: 0, // water % speed
		l_per: 0, // land % speed
		c_per: 0, // climb % speed
		g_per: 0, // glide % speed
		a_per: 0, // air % speed
		g:	false, // can glide
		ability: -1, // ability ID ( -1 means no ability )
	}
	ds_list_add(_list, rabbit_body);
	
	
	centipede_body = {
		type: "body", // part type
		sprite: spr_centipede_body, // sprite
		body_tail: [-25, -3], // anchor point for tail [x, y]
		body_head: [26, -27], // anchor point for head [x, y]
		w_spd: 0, // water speed
		l_spd: 0, // land speed
		c_spd: 20, // climb speed
		g_spd: 0, // glide speed
		a_spd: 0, // air speed
		w_per: 0, // water % speed
		l_per: 0, // land % speed
		c_per: 0, // climb % speed
		g_per: 0, // glide % speed
		a_per: 0, // air % speed
		g:	false, // can glide
		ability: -1, // ability ID ( -1 means no ability )
	}
	ds_list_add(_list, centipede_body);
	
	pegasus_body = {
		type: "body", // part type
		sprite: spr_pegasus_body, // sprite
		body_tail: [-24, -8], // anchor point for tail [x, y]
		body_head: [28, -28], // anchor point for head [x, y]
		w_spd: 0, // water speed
		l_spd: 10, // land speed
		c_spd: 0, // climb speed
		g_spd: 10, // glide speed
		a_spd: 0, // air speed
		w_per: 0, // water % speed
		l_per: 0, // land % speed
		c_per: 0, // climb % speed
		g_per: 0, // glide % speed
		a_per: 0, // air % speed
		g:	true, // can glide
		ability: -1, // ability ID ( -1 means no ability )
	}
	ds_list_add(_list, pegasus_body);
	
	whale_body = {
		type: "body", // part type
		sprite: spr_whale_body, // sprite
		body_tail: [-32, -1], // anchor point for tail [x, y]
		body_head: [26, -15], // anchor point for head [x, y]
		w_spd: 15, // water speed
		l_spd: 0, // land speed
		c_spd: 0, // climb speed
		g_spd: -10, // glide speed
		a_spd: 10, // air speed
		w_per: 0, // water % speed
		l_per: 0, // land % speed
		c_per: 0, // climb % speed
		g_per: 0, // glide % speed
		a_per: 0, // air % speed
		g:	false, // can glide
		ability: -1, // ability ID ( -1 means no ability )
	}
	ds_list_add(_list, whale_body);
	
#endregion

#region Leg Parts

	fish_legs = {
		type: "legs", // part type
		sprite: -1, // sprite
		legs_body: [0, 0], //anchor point for body [x,y]
		w_spd: 5, // water speed
		l_spd: -5, // land speed
		c_spd: 0, // climb speed
		g_spd: 0, // glide speed
		a_spd: 0, // air speed
		w_per: 0, // water % speed
		l_per: 0, // land % speed
		c_per: 0, // climb % speed
		g_per: 0, // glide % speed
		a_per: 0, // air % speed
		g:	false, // can glide
		ability: -1, // ability ID ( -1 means no ability )
	}
	ds_list_add(_list, fish_legs);
	
	squirrel_legs = {
		type: "legs", // part type
		sprite: spr_squirrel_legs, // sprite
		legs_body: [0, -8], //anchor point for body [x,y]
		w_spd: 0, // water speed
		l_spd: 0, // land speed
		c_spd: 5, // climb speed
		g_spd: 0, // glide speed
		a_spd: 0, // air speed
		w_per: 0, // water % speed
		l_per: 0, // land % speed
		c_per: 0, // climb % speed
		g_per: 0, // glide % speed
		a_per: 0, // air % speed
		g:	false, // can glide
		ability: -1, // ability ID ( -1 means no ability )
	}
	ds_list_add(_list, squirrel_legs);
	
	rabbit_legs = {
		type: "legs", // part type
		sprite: spr_rabbit_legs, // sprite
		legs_body: [0, -4], //anchor point for body [x,y]
		w_spd: 0, // water speed
		l_spd: 5, // land speed
		c_spd: 0, // climb speed
		g_spd: 0, // glide speed
		a_spd: 0, // air speed
		w_per: 0, // water % speed
		l_per: 0, // land % speed
		c_per: 0, // climb % speed
		g_per: 0, // glide % speed
		a_per: 0, // air % speed
		g:	false, // can glide
		ability: -1, // ability ID ( -1 means no ability )
	}
	ds_list_add(_list, rabbit_legs);
	
	
	spider_legs = {
		type: "legs", // part type
		sprite: spr_spider_legs, // sprite
		legs_body: [0, -11], //anchor point for body [x,y]
		w_spd: 0, // water speed
		l_spd: 0, // land speed
		c_spd: 15, // climb speed
		g_spd: 0, // glide speed
		a_spd: 0, // air speed
		w_per: 0, // water % speed
		l_per: 0, // land % speed
		c_per: 0, // climb % speed
		g_per: 0, // glide % speed
		a_per: 0, // air % speed
		g:	false, // can glide
		ability: -1, // ability ID ( -1 means no ability )
	}
	ds_list_add(_list, spider_legs);
	
	sleipnir_legs = {
		type: "legs", // part type
		sprite: spr_sleipnir_legs, // sprite
		legs_body: [0, -11], //anchor point for body [x,y]
		w_spd: 0, // water speed
		l_spd: 20, // land speed
		c_spd: -10, // climb speed
		g_spd: 0, // glide speed
		a_spd: 0, // air speed
		w_per: 0, // water % speed
		l_per: 0, // land % speed
		c_per: 0, // climb % speed
		g_per: 0, // glide % speed
		a_per: 0, // air % speed
		g:	false, // can glide
		ability: -1, // ability ID ( -1 means no ability )
	}
	ds_list_add(_list, sleipnir_legs);
	
	dolphin_legs = {
		type: "legs", // part type
		sprite: -1, // sprite
		legs_body: [0, -11], //anchor point for body [x,y]
		w_spd: 20, // water speed
		l_spd: -10, // land speed
		c_spd: 0, // climb speed
		g_spd: 0, // glide speed
		a_spd: 0, // air speed
		w_per: 0, // water % speed
		l_per: 0, // land % speed
		c_per: 0, // climb % speed
		g_per: 0, // glide % speed
		a_per: 0, // air % speed
		g:	false, // can glide
		ability: -1, // ability ID ( -1 means no ability )
	}
	ds_list_add(_list, dolphin_legs);
	
#endregion

#region Tail Parts

	fish_tail = {
		type: "tail", // part type
		sprite: spr_fish_tail, // sprite
		w_spd: 0, // water speed
		l_spd: 0, // land speed
		c_spd: 0, // climb speed
		g_spd: 0, // glide speed
		a_spd: 0, // air speed
		w_per: 15, // water % speed
		l_per: 0, // land % speed
		c_per: 0, // climb % speed
		g_per: 0, // glide % speed
		a_per: 0, // air % speed
		g:	false, // can glide
		ability: -1, // ability ID ( -1 means no ability )
	}
	ds_list_add(_list, fish_tail);

	squirrel_tail = {
		type: "tail", // part type
		sprite: spr_squirrel_tail, // sprite
		w_spd: 0, // water speed
		l_spd: 0, // land speed
		c_spd: 0, // climb speed
		g_spd: 0, // glide speed
		a_spd: 0, // air speed
		w_per: 0, // water % speed
		l_per: 0, // land % speed
		c_per: 15, // climb % speed
		g_per: 0, // glide % speed
		a_per: 0, // air % speed
		g:	false, // can glide
		ability: -1, // ability ID ( -1 means no ability )
	}
	ds_list_add(_list, squirrel_tail);

	rabbit_tail = {
		type: "tail", // part type
		sprite: spr_rabbit_tail, // sprite
		w_spd: 0, // water speed
		l_spd: 0, // land speed
		c_spd: 0, // climb speed
		g_spd: 0, // glide speed
		a_spd: 0, // air speed
		w_per: 0, // water % speed
		l_per: 15, // land % speed
		c_per: 0, // climb % speed
		g_per: 0, // glide % speed
		a_per: 0, // air % speed
		g:	false, // can glide
		ability: -1, // ability ID ( -1 means no ability )
	}
	ds_list_add(_list, rabbit_tail);
	
	
	cheetah_tail = {
		type: "tail", // part type
		sprite: spr_cheetah_tail, // sprite
		w_spd: 0, // water speed
		l_spd: 0, // land speed
		c_spd: 0, // climb speed
		g_spd: 0, // glide speed
		a_spd: 0, // air speed
		w_per: 0, // water % speed
		l_per: 20, // land % speed
		c_per: 0, // climb % speed
		g_per: 0, // glide % speed
		a_per: 0, // air % speed
		g:	false, // can glide
		ability: -1, // ability ID ( -1 means no ability )
	}
	ds_list_add(_list, cheetah_tail);
	
	kraken_tail = {
		type: "tail", // part type
		sprite: spr_kraken_tail, // sprite
		w_spd: 0, // water speed
		l_spd: 0, // land speed
		c_spd: 0, // climb speed
		g_spd: 0, // glide speed
		a_spd: 0, // air speed
		w_per: 25, // water % speed
		l_per: 0, // land % speed
		c_per: -10, // climb % speed
		g_per: 0, // glide % speed
		a_per: 0, // air % speed
		g:	false, // can glide
		ability: -1, // ability ID ( -1 means no ability )
	}
	ds_list_add(_list, kraken_tail);
	
	dragon_tail = {
		type: "tail", // part type
		sprite: spr_dragon_tail, // sprite
		w_spd: 0, // water speed
		l_spd: 0, // land speed
		c_spd: 0, // climb speed
		g_spd: 0, // glide speed
		a_spd: 0, // air speed
		w_per: 0, // water % speed
		l_per: 0, // land % speed
		c_per: 0, // climb % speed
		g_per: 30, // glide % speed
		a_per: 0, // air % speed
		g:	false, // can glide
		ability: -1, // ability ID ( -1 means no ability )
	}
	ds_list_add(_list, dragon_tail);
	
#endregion
}

