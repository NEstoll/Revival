/// @description Insert description here
// You can write your code in this editor

if(other.hp > 1) {
	other.hp -= 1;
} else {
	instance_destroy(other);
}
instance_destroy();