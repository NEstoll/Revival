/// @description Insert description here
// You can write your code in this editor

if(attacking){
	other.hp -= 1
	if (other.hp <= 0) {
		instance_destroy(other)
		room_goto(Level2);
	}
	attacking = false
}


