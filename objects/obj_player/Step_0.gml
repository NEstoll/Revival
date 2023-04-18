/// @description Controls player movement

//check the keyboard for movement
keyleft = keyboard_check(vk_left);
keyright = keyboard_check(vk_right);
keyup = keyboard_check(vk_up);
keydown = keyboard_check(vk_down);
move = keyright - keyleft;
vmove = keydown - keyup;

//set the horizontal speed
hsp = spd * move;

if(!attacking){
//set the avatar 
if(move != 0){
	image_xscale = move;
	if(grounded){
		sprite_index = spr_avatar_run;
	}
}else{
	sprite_index = spr_avatar_idle;
}

//if the player gets to a ladder and is moving up
if (place_meeting(x, y+1, obj_ladder)) {
	if (vmove < 0 || 
	(vmove == 0 && climbing) || 
	(vmove > 0 && place_meeting(x, y+sprite_height, obj_ladder))) {
		climbing = true;
	} else {
		climbing = false;
	}
} else {
	climbing = false;
}

//if player is going up the ladder
if (climbing) {
	vsp = vmove * spd;
}



vsp += grv;

if ((place_meeting(x, y + vsp, obj_block) || place_meeting(x, y + vsp, obj_frozen_player)) && !climbing) {
	while (!(place_meeting(x, y + sign(vsp), obj_block) || place_meeting(x, y + vsp, obj_frozen_player))) {
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


if (place_meeting(x + hsp, y, obj_block)) {
	while (!place_meeting(x + sign(hsp), y, obj_block)) {
		x += sign(hsp);
	}
	hsp = 0;
}

x += hsp;