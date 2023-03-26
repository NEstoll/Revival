/// @description Insert description here
// You can write your code in this editor
if (state != PlayerState.DEAD) {
	if (grounded) {
		grounded = false
		y_vel = -j_spd
	} else if (double_jump) {
		double_jump = false;
		y_vel = -j_spd
	}
}


