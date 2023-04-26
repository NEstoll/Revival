/// @description Insert description here
// You can write your code in this editor

if ((place_meeting(x, y + vsp, obj_block) || place_meeting(x, y + vsp, obj_cannon))) {
	while (!(place_meeting(x, y + sign(vsp), obj_block) || place_meeting(x, y + vsp, obj_cannon))) {
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
vsp += grv;