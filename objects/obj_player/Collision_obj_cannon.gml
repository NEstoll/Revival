/// @description Insert description here
// You can write your code in this editor

if(has_powder) {
	if(!other.is_loaded) {
		other.is_loaded = true;
		has_powder = false;
		global.gunpowder -= 1;
		global.used_gunpowder = true;
	}
}

if((x < other.x and hsp > 0) or (x > other.x and hsp < 0)) {
	other.x += hsp;
}

if(keyboard_check(vk_shift) and other.is_loaded) {
	instance_create_layer(other.x,other.y,"Instances",obj_cannonball);
	other.is_loaded = false;
	alarm[0] = room_speed * 1;
}