/// @description Insert description here
// You can write your code in this editor


event_inherited();
if(flee_failed && room = rm_combat){
	draw_set_color(c_black);
	draw_text(1366/2,768/2,"Couldn't get away!");
}else if(flee_failed && room = rm_boss_combat){
	draw_set_color(c_white);
	draw_text(1366/2,768/2,"Can't flee from boss!");
}