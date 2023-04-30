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
if(global.game_state != game_states.PAUSED && (room == rm_combat || room = rm_boss_combat)){
	global.game_state = game_states.COMBAT;
}
//combat controls
if(global.game_state == game_states.COMBAT){
	//is attack button pressed
	if(global.player_turn){
		if(global.attack_pressed){
		   enemy_health -= global.player_atk + irandom_range(-global.player_atk /4,global.player_atk /2);
		   player_offset = 50;
		   global.player_turn = false;
		   alarm[2] = room_speed*0.25;
		   alarm[0] = room_speed*1;
		}
	}
	//if enemy killed
	if(enemy_health <= 1){
		//save_script();
		//game_load("level.dat");
		global.battle_won = true;
		global.load_prev =true;
		global.game_state = game_states.PLAYING;
		room_goto(global.prev_room);	
	}
	if(global.health <= 0){
		global.battle_won = false;
		global.lives--;
		global.health = 100;
		global.load_prev =true;
		global.saveX = 256;
		global.saveY = 1792;
		global.game_state = game_states.PLAYING;
		room_goto(global.prev_room);
	}
}