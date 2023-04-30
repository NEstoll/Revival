/// @description Insert description here
// You can write your code in this editor

alarm[0] = room_speed * 1;
if(phase == gui_phase.intro){
	phase = gui_phase.background;
}else if(phase == gui_phase.background){
	phase = gui_phase.puzzle;
}else if(phase == gui_phase.puzzle){
	phase = gui_phase.move;
}else if(phase == gui_phase.move){
	phase = gui_phase.jump;
}else if(phase == gui_phase.jump){
	phase = gui_phase.attack;
}else if(phase == gui_phase.attack){
	phase = gui_phase.start;
	alarm[0] = room_speed * 2;
}else{
	obj_door.visible = true;
}

