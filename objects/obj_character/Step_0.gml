/// @description Handle movement and collision

// Checking for block collision in the x-direction.
for (var i = 0; i < array_length(collisions); i ++) {
	if (place_meeting(x + x_vel, y, collisions[i])) {
		while (!place_meeting(x + sign(x_vel), y, collisions[i])) {
			x += sign(x_vel);	
		}
		x_vel = 0;
		break;
	}
}

x += x_vel;
//apply friction
x_vel = x_vel * .8

// Apply gravity to vertical speed
y_vel += gvd

// Checking for block collision in the y-direction.
for (var i = 0; i < array_length(collisions); i ++) {
	if (place_meeting(x, y + y_vel, collisions[i])) {
		while (!place_meeting(x, y + sign(y_vel), collisions[i])) {
			y += sign(y_vel);	
		}
		y_vel = 0;
		grounded = true;
		break;
	}
}

y += y_vel;
