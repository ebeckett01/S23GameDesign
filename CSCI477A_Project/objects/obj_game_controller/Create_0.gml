/// @Game controller
enum game_states{
	PLAYING,
	PAUSED, 
	COMBAT
};
global.game_state = game_states.PLAYING;
global.wasd = true;
paused_surf =-1;

health = 100;
enemy_health = 100;
player_turn = false;