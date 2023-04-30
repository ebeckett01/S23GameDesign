/// @description Insert description here
// You can write your code in this editor

//enemy attacks player or heals
choice = irandom_range(0,4);
if (choice != 0){
	//attack
	global.health =global.health- global.enemy_atk + irandom_range(-global.enemy_atk /4,global.enemy_atk /2);
	
	 enemy_offset = 50;
	 global.player_turn = true;
	 alarm[2] = room_speed*0.25;
	//alarm[1] = room_speed*0.1;
}else{
	//health
	if(room = rm_combat){
		enemy_health += irandom_range(7,20);
		if (enemy_health >=100){
			enemy_health =100;
		}
	}else if (room =rm_boss_combat){
		enemy_health += irandom_range(4,15);
		if (enemy_health >=150){
			enemy_health =150;
		}
	}
	healing = true;
	global.player_turn = true;
}
