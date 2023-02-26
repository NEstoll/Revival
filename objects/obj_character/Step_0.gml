/// @description Handle movement and collision

// Checking for block collision in the x-direction.

if (place_meeting(x + x_vel, y, obj_block)) {
	while (!place_meeting(x + sign(x_vel), y, obj_block)) {
		x += sign(x_vel);	
	}
	x_vel = 0;
}

x += x_vel;
//apply friction
x_vel = x_vel * .8

// Apply gravity to vertical speed
y_vel += room.gravity

// Checking for block collision in the y-direction.
if (place_meeting(x, y + y_vel, obj_block)) {
	while (!place_meeting(x, y + sign(y_vel), obj_block)) {
		y += sign(y_vel);	
	}
	y_vel = 0;
	grounded = true;
} else {
	grounded = false;
}

y += y_vel;
