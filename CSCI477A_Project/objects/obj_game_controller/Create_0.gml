/// @Game controller
enum game_states{
	PLAYING,
	PAUSED, 
	COMBAT
};
global.game_state = game_states.PLAYING;
global.wasd = true;
global.tutorial_text_mod = 0;

global.player_atk = 10;
global.enemy_atk = 7;

global.attack_pressed = false;
if (room = rm_combat){
	enemy_health = 100;
}else{
	enemy_health = 150;	
}
player_turn = true;

player_offset = 0;
enemy_offset = 0;
boss_offset =20;

healing = false;

score = 0;

alarm[3] = -1;