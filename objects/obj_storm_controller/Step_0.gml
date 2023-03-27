if((obj_player.x > 1100 || storming) && alarm[0] == -1 && cloud_alpha != 1){
	cloud_alpha += .005;
	obj_cloud.image_alpha += .005;
	obj_room_darkener.image_alpha += .0025;
	storming = true;
}

if(cloud_alpha == 1 && !instance_exists(obj_snowflake) && !reset){
	Storm();
	storming = false;
	reset = true;
}
if(reset && !instance_exists(obj_snowflake)){
	cloud_alpha = 0;
	obj_cloud.image_alpha = 0;
	obj_room_darkener.image_alpha = 0;
	alarm[0] = room_speed * 5;
	reset = false;
}