

draw_set_halign(fa_center);
draw_set_valign(fa_middle);



if (room == Help) {
	draw_set_font(fnt_menu);
	//draw_text(room_width/2, room_height/4, "You find yourself in a strange landscape that seems\n oddly familiar. As you look around, and notice the remains of less\n fortunate past adventurers, you are overwelmed by a strong feeling of deja vu.\n You don't know where you are, but you know you must escape.")
	draw_text(room_width/2, room_height/4, "Arrow keys to move\nShift to attack\nSpace to jump\nHold up to climb ladders")
} else {
	draw_set_font(fnt_title);
	draw_text(room_width/2,140,"Revival");
}
