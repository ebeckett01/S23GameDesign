/// @ Simple controller for pausing game
if(global.game_state == game_states.PLAYING ||global.game_state == game_states.COMBAT){
	global.game_state = game_states.PAUSED;
	// First time pause makes this weird 100 pixel shift
	// Code below fixes this problem
	global.tutorial_text_mod = 175;
}else if(global.game_state == game_states.PAUSED){
	global.game_state = game_states.PLAYING;
}
