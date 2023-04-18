/// @description Insert description here
// You can write your code in this editor

if(!has_powder) {
	instance_destroy(other);
	has_powder = true;
	global.gunpowder += 1;
}