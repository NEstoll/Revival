/// @description Insert description here
// You can write your code in this editor

if(!instance_exists(obj_dragon) and room_get_name(room) == "Level3") {
	if(keyboard_check(vk_enter)){
		game_end();
	}
}