// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Storm(){
	var y_pos = 768;
while(y_pos > 0){
	var snowflake = instance_create_layer(2500 + irandom_range(0, 400), y_pos, "Instances", obj_snowflake);
	snowflake.direction = point_direction(x, y, x-1, y);
	snowflake.speed = snowflake.spd;
	y_pos -= 25;
}
}
   