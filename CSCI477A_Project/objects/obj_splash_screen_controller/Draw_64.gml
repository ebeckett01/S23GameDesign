/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_title_screen);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_text(room_width / 2, room_height / 2, "Sneaky Knight");
draw_set_font(fnt_tutorial);
draw_set_color(c_black);
draw_set_valign(fa_top);
draw_text(room_width / 2, room_height / 2, "Press ENTER to start");