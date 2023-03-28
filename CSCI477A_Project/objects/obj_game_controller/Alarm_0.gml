/// @description Insert description here
// You can write your code in this editor

//enemy attacks player or blocks
choice = irandom_range(0,1);
if (choice == 0){
	//attack
	health -= global.enemy_atk + irandom_range(-global.enemy_atk /4,global.enemy_atk /2);
	player_turn = true;
	//alarm[1] = room_speed*0.1;
}else{
	//defend
	player_turn = true;
}
