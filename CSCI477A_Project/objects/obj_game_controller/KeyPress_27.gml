/// @ Simple controller for pausing game
if(global.game_state == game_states.PLAYING ||global.game_state == game_states.COMBAT){
	global.game_state = game_states.PAUSED;
}else if(global.game_state == game_states.PAUSED){
	global.game_state = game_states.PLAYING;
}
