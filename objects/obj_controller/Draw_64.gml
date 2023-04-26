/// @description Insert description here
// You can write your code in this editor


if(room_get_name(room) == "Level1") {
	draw_set_font(fnt_menu)
	draw_text(view_get_wport(view_camera[0])/2-25, 0, "Yeti")
	draw_healthbar(100, 50, view_get_wport(view_camera[0])-100,75, (instance_find(obj_yeti, 0).hp/3)*100, c_black, c_red, c_red, 0, true, true)
} else if (room_get_name(room) == "Level3") {
	draw_set_font(fnt_menu);
	draw_text(view_get_wport(view_camera[0])/10-100, 700, "Gunpowder x" + string(global.gunpowder));
	if(!global.used_gunpowder && global.gunpowder == 0) {
		draw_text(view_get_wport(view_camera[0])/4, 700, "That cannon needs gunpowder");
	} else if (global.used_gunpowder) {
		draw_text(view_get_wport(view_camera[0])/4, 700, "Press shift to fire cannon");
	}
	if(instance_exists(obj_dragon)){
		draw_set_font(fnt_menu)
		draw_text(view_get_wport(view_camera[0])/2-25, 0, "Dragon")
		draw_healthbar(100, 75, view_get_wport(view_camera[0])-100,100, (instance_find(obj_dragon, 0).hp/5)*100, c_black, c_red, c_red, 0, true, true)
	} else {
		draw_set_font(fnt_menu)
		draw_text(view_get_wport(view_camera[0])/2-70, 400, "YOU WIN");
		draw_text(view_get_wport(view_camera[0])/2-150, 450, "Press enter to close");
	}
}