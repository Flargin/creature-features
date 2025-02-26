function body_parts(_list){
#region VARIBALES THAT AFFECT STATS
	head = {
		type: "head", // part type
		sprite: -1, // sprite
		w_spd: 0, // water speed
		l_spd: 0, // land speed
		c_spd: 0, // climb speed
		g_spd: 0, // glide speed
		w_per: 0, // water % speed
		l_per: 0, // land % speed
		c_per: 0, // climb % speed
		g_per: 0, // glide % speed
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
		w_per: 0, // water % speed
		l_per: 0, // land % speed
		c_per: 0, // climb % speed
		g_per: 0, // glide % speed
		g:	false, // can glide
		ability: -1, // ability ID ( -1 means no ability )
	}

	legs = {
		type: "legs", // part type
		sprite: -1, // sprite
		w_spd: 0, // water speed
		l_spd: 0, // land speed
		c_spd: 0, // climb speed
		g_spd: 0, // glide speed
		w_per: 0, // water % speed
		l_per: 0, // land % speed
		c_per: 0, // climb % speed
		g_per: 0, // glide % speed
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
		w_per: 0, // water % speed
		l_per: 0, // land % speed
		c_per: 0, // climb % speed
		g_per: 0, // glide % speed
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
		w_per: 0, // water % speed
		l_per: 0, // land % speed
		c_per: 0, // climb % speed
		g_per: 0, // glide % speed
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
		w_per: 0, // water % speed
		l_per: 0, // land % speed
		c_per: 0, // climb % speed
		g_per: 0, // glide % speed
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
		w_per: 0, // water % speed
		l_per: 0, // land % speed
		c_per: 0, // climb % speed
		g_per: 0, // glide % speed
		g:	false, // can glide
		ability: -1, // ability ID ( -1 means no ability )
	}
	ds_list_add(_list, rabbit_head);

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
		w_per: 0, // water % speed
		l_per: 0, // land % speed
		c_per: 0, // climb % speed
		g_per: 0, // glide % speed
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
		w_per: 0, // water % speed
		l_per: 0, // land % speed
		c_per: 0, // climb % speed
		g_per: 0, // glide % speed
		g:	false, // can glide
		ability: -1, // ability ID ( -1 means no ability )
	}
	ds_list_add(_list, squirrel_body);
	
	rabbit_body = {
		type: "body", // part type
		sprite: spr_rabbit_body, // sprite
		w_spd: 0, // water speed
		l_spd: 5, // land speed
		c_spd: 0, // climb speed
		g_spd: 0, // glide speed
		w_per: 0, // water % speed
		l_per: 0, // land % speed
		c_per: 0, // climb % speed
		g_per: 0, // glide % speed
		g:	false, // can glide
		ability: -1, // ability ID ( -1 means no ability )
	}
	ds_list_add(_list, rabbit_body);
	
#endregion

#region Leg Parts

	fish_legs = {
		type: "legs", // part type
		sprite: -1, // sprite
		w_spd: 5, // water speed
		l_spd: -5, // land speed
		c_spd: 0, // climb speed
		g_spd: 0, // glide speed
		w_per: 0, // water % speed
		l_per: 0, // land % speed
		c_per: 0, // climb % speed
		g_per: 0, // glide % speed
		g:	false, // can glide
		ability: -1, // ability ID ( -1 means no ability )
	}
	ds_list_add(_list, fish_legs);
	
	squirrel_legs = {
		type: "legs", // part type
		sprite: spr_squirrel_legs, // sprite
		w_spd: 0, // water speed
		l_spd: 0, // land speed
		c_spd: 5, // climb speed
		g_spd: 0, // glide speed
		w_per: 0, // water % speed
		l_per: 0, // land % speed
		c_per: 0, // climb % speed
		g_per: 0, // glide % speed
		g:	false, // can glide
		ability: -1, // ability ID ( -1 means no ability )
	}
	ds_list_add(_list, squirrel_legs);
	
	rabbit_legs = {
		type: "legs", // part type
		sprite: spr_rabbit_legs, // sprite
		w_spd: 0, // water speed
		l_spd: 5, // land speed
		c_spd: 0, // climb speed
		g_spd: 0, // glide speed
		w_per: 0, // water % speed
		l_per: 0, // land % speed
		c_per: 0, // climb % speed
		g_per: 0, // glide % speed
		g:	false, // can glide
		ability: -1, // ability ID ( -1 means no ability )
	}
	ds_list_add(_list, rabbit_legs);
	
#endregion

#region Tail Parts

	fish_tail = {
		type: "tail", // part type
		sprite: spr_fish_tail, // sprite
		w_spd: 0, // water speed
		l_spd: 0, // land speed
		c_spd: 0, // climb speed
		g_spd: 0, // glide speed
		w_per: 15, // water % speed
		l_per: 0, // land % speed
		c_per: 0, // climb % speed
		g_per: 0, // glide % speed
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
		w_per: 0, // water % speed
		l_per: 0, // land % speed
		c_per: 15, // climb % speed
		g_per: 0, // glide % speed
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
		w_per: 0, // water % speed
		l_per: 15, // land % speed
		c_per: 0, // climb % speed
		g_per: 0, // glide % speed
		g:	false, // can glide
		ability: -1, // ability ID ( -1 means no ability )
	}
	ds_list_add(_list, rabbit_tail);
	
#endregion
}

