if(x >= 928){
	sprite_index = spr_avatar_idle;
	y += 10;
	if(y > 710){
		image_angle += 7;
	}
}else{
	vsp += grv;

	if (place_meeting(x, y + vsp, obj_block)) {
		while (!place_meeting(x, y + sign(vsp), obj_block)) {
			y += sign(vsp);
		}
		if (sign(vsp) == 1) {
			grounded = true;
		}
		vsp = 0;
	} else {
		grounded = false;
	}

	y += vsp;	
}

if(y > 7050){
	room_goto_next();
}