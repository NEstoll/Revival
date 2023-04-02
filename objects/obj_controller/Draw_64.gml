/// @description Insert description here
// You can write your code in this editor



draw_set_font(fnt_menu)
draw_text(view_get_wport(view_camera[0])/2-25, 0, "Yeti")
draw_healthbar(100, 50, view_get_wport(view_camera[0])-100,75, (instance_find(obj_yeti, 0).hp/3)*100, c_black, c_red, c_red, 0, true, true)
