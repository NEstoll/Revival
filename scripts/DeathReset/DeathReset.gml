// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DeathReset(){
	instance_destroy(obj_snowflake);
	obj_cloud.image_alpha = 0;
	obj_room_darkener.image_alpha = 0;
	
	obj_storm_controller.cloud_alpha = 0;
	obj_storm_controller.alarm[0] = room_speed * 2;
	obj_storm_controller.reset = false;
	obj_storm_controller.storming = false;
}