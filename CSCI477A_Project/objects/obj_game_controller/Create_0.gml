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

enemy_health = 100;
player_turn = true;

score = 0;