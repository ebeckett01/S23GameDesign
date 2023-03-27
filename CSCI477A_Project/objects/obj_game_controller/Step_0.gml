/// @description Insert description here
// You can write your code in this editor

if(mouse_check_button_pressed(mb_left) &&
   point_in_rectangle(mouse_x-camera_get_view_x(view_camera[0]),mouse_y-camera_get_view_y(view_camera[0]),10,10,80,80)&&
   global.game_state == game_states.PAUSED){
	if(global.wasd){
		global.wasd = false;
	}else{
		global.wasd =true;
	}
}
if(global.game_state != game_states.PAUSED && room == rm_combat){
	global.game_state = game_states.COMBAT;
}