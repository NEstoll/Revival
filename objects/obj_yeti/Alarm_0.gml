if((obj_player.x < x && image_xscale < 0) ||(obj_player.x > x && image_xscale > 0)){
	var snowball = instance_create_layer(x, y, "Instances", obj_snowball);
	snowball.direction = point_direction(x, y, obj_player.x, obj_player.y); // straight-up 
	snowball.speed = snowball.spd;
}
randomint = room_speed * irandom_range(1,3);
alarm[0] = randomint;