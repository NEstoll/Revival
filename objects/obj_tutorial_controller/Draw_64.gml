/// @description Insert description here
// You can write your code in this editor

if(phase == gui_phase.intro){
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_font (fnt_menu);
	draw_set_alpha (1);
	draw_set_colour (c_black);
	draw_text ( room_width / 2, room_height/2, "Well hello traveler...\n Looks like you tried stealing one too many times.");
}else if(phase == gui_phase.background){
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_font (fnt_menu);
	draw_set_alpha (1);
	draw_set_colour (c_black);
	draw_text ( room_width / 2, room_height/2, "You've ended up in pergatory. \nYou need to fight your way through.\n But there is a catch...");
}else if(phase == gui_phase.puzzle){
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_font (fnt_menu);
	draw_set_alpha (1);
	draw_set_colour (c_black);
	draw_text ( room_width / 2, room_height/2, "You'll have to die a few times to escape.\n Some ways will help you, others not so much.\n Use your dead bodies to help you win.");
}else if(phase == gui_phase.move){
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_font (fnt_menu);
	draw_set_alpha (1);
	draw_set_colour (c_black);
	draw_text ( room_width / 2, room_height/2, "Use the arrow keys to move. \nUp and down will help you climb ladders.");
}else if(phase == gui_phase.jump){
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_font (fnt_menu);
	draw_set_alpha (1);
	draw_set_colour (c_black);
	draw_text ( room_width / 2, room_height/2, "Press space to jump.");
}else if(phase == gui_phase.attack){
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_font (fnt_menu);
	draw_set_alpha (1);
	draw_set_colour (c_black);
	draw_text ( room_width / 2, room_height/2, "Press shift to use your sword to attack.");
}else if(phase == gui_phase.start){
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_font (fnt_menu);
	draw_set_alpha (1);
	draw_set_colour (c_black);
	draw_text ( room_width / 2, room_height/2, "Good Luck!");
}	