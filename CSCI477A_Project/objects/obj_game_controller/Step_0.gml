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
//combat controls
if(global.game_state == game_states.COMBAT){
	//is attack button pressed
	if(global.attack_pressed){
	   if(player_turn){
		   enemy_health -= global.player_atk + irandom_range(-global.player_atk /4,global.player_atk /2);
		   player_turn = false;
		   alarm[0] = room_speed*1;
		}
	}
	//if enemy killed
	if(enemy_health <= 0){
		save_script();
		//game_load("level.dat");
		global.battle_won = true;
		global.load_prev =true;
		//audio_play_sound(snd_debug, 10, false);
		room_goto(global.prev_room);	
	}
}