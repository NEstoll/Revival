/// @description Insert description here
// You can write your code in this editor

enum gui_phase {
	intro,
	background,
	puzzle,
	move,
	jump,
	attack,
	start
}

phase = gui_phase.intro;
alarm[0] = room_speed * 1;