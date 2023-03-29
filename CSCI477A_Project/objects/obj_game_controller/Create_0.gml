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

global.battle_won = false;
global.battle_lost = false;

global.health = 100;
enemy_health = 100;
player_turn = true;