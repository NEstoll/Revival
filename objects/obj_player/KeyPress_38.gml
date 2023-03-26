/// @description Insert description here
// You can write your code in this editor
if (state != PlayerState.DEAD) {
	if (grounded) {
		y_vel = -y_spd
		grounded = false
	}
}

