/// @description Player jump

if(grounded == true) {
	vsp -= jspd;
	grounded = false;
	sprite_index = spr_avatar_idle;
}


