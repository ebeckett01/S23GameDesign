/// @Example on how to use button
//  Make sure the parent is obj_button_parent
//  In the create event make sure you do event_inherited
//  To adjust the text displayed on the button Open variable definitions and change the text

// Inherit the parent event
event_inherited();
button_text = "FLEE";
flee_failed = false;
// Modify what the button does when clicked
button_clicked = function(){
	// Code for what you want the button to do
	var hp;
	with(obj_game_controller){
		hp =enemy_health;
	}
	var temp = irandom_range(1,hp);
	if(temp < 10){		
		global.battle_won = false;
		global.load_prev =true;
		global.game_state = game_states.PLAYING;
		global.canspot = false;
		room_goto(global.prev_room);
	}else{
		player_turn = false;
		player_turn = false;
		with(obj_game_controller){
			alarm[0] = room_speed*1;
		}
		flee_failed = true;
		alarm[5] = room_speed*1;
	}
}

// Mpdify what the button does when mouse hovers over it
button_hovering = function(){
	// Code for what you want the button to do	

}