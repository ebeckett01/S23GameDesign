/// @Game controller
enum game_states{
	PLAYING,
	PAUSED, 
	COMBAT
};
global.game_state = game_states.PLAYING;
global.wasd = true;
global.tutorial_text_mod = 0;
paused_surf =-1;

health = 100;
enemy_health = 100;
player_turn = false;