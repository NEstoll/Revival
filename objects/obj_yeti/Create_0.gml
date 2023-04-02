/// @description Insert description here
// You can write your code in this editor

hp = 3
spd = 2;
sprite_index = spr_yeti_walk;
image_xscale *= -1;
path_start(Path1, spd, path_action_reverse,true);

randomint = room_speed * irandom_range(1,3);
alarm[0] = randomint;

