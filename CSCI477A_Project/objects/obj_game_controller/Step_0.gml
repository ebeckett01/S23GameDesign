/// @description Insert description here
// You can write your code in this editor

if(mouse_check_button_pressed(mb_left) &&
   point_in_rectangle(mouse_x,mouse_y,10,10,80,80)&&
   global.game_state == game_states.PAUSED){
	if(global.wasd){
		global.wasd = false;
	}else{
		global.wasd =true;
	}
}