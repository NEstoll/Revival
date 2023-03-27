/// @description Insert description here
// You can write your code in this editor


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


