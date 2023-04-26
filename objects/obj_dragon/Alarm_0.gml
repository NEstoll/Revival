/// @description Insert description here
// You can write your code in this editor

if((obj_player.x < x && image_xscale < 0) ||(obj_player.x > x && image_xscale > 0)){
	sprite_index = spr_dragon_fly_side_fire;
	var fireball = instance_create_layer(x-500, y+250, "Instances", obj_fireball);
	fireball.direction = point_direction(x-450, y+250, obj_player.x, obj_player.y);
	fireball.speed = fireball.spd;
	sprite_index = spr_dragon_fly_side;
}
randomint = room_speed * irandom_range(1,8);
alarm[0] = randomint;