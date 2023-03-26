/// @description Controls player movement

keyleft = keyboard_check(vk_left);
keyright = keyboard_check(vk_right);
keyup = keyboard_check(vk_up);
keydown = keyboard_check(vk_down);
move = keyright - keyleft;
vmove = keydown - keyup;

hsp = spd * move;

if(move != 0){
	image_xscale = move;
	if(grounded){
		sprite_index = spr_avatar_run;
	}
}else{
	sprite_index = spr_avatar_idle;
}

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

if (climbing) {
	vsp = vmove * spd;
	sprite_index = spr_avatar_run;
}

if (place_meeting(x + hsp, y, obj_block)) {
	while (!place_meeting(x + sign(hsp), y, obj_block)) {
		x += sign(hsp);
	}
	hsp = 0;
}

x += hsp;


vsp += grv;

if (place_meeting(x, y + vsp, obj_block)) {
	while (!place_meeting(x, y + sign(vsp), obj_block)) {
		y += sign(vsp);
	}
	vsp = 0;
	grounded = true;
} else {
	grounded = false;
}


y += vsp;