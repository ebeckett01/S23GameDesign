/// @Player specific movement
// Key pressed variables
var keyleft;
var keyright;
var keydown;
var jumping;
// Determines whether to use wasd or <^>
if(!global.wasd){
	keyleft = keyboard_check(vk_left);
	keyright = keyboard_check(vk_right);
	jumping = keyboard_check_pressed(vk_up);
	keydown = keyboard_check(vk_down);
}else{
	keyleft = keyboard_check(ord("A"));
	keyright = keyboard_check(ord("D"));
	jumping = keyboard_check_pressed(ord("W"));
	keydown = keyboard_check(ord("S"));
}

// Non-changing key binds
var attack = keyboard_check(vk_space);
var dash_key =keyboard_check(vk_shift);

// Movement variables
var move = keyright-keyleft;
if(global.game_state == game_states.PLAYING){
	image_speed =1;
	// Set initial horizontal movement value
	if(!dash_key){
		hsp = move*spd;
	}else{
		hsp = 2*move*spd;
	}


	// Collision logic

	//check horizontal collision with a block
	if (place_meeting(x + hsp, y, obj_platform)) {
		//going to hit a block in next frame
		while( !place_meeting(x+ sign(hsp), y, obj_platform)) {
			x += sign(hsp);
		}
		hsp = 0;
	}

	//jumping and vertical speed
	vsp += grv;
	//jumping
	if (on_platform && jumping){
		alarm[0] = room_speed/40;
		on_platform = false;   
	}else if(doubleJump && jumping){
		alarm[0] = room_speed/40;
		doubleJump= false;
	}
	//check vertical collision with a block
	var inst = instance_place(x, y+ vsp, obj_platform);
	if (inst != noone) {
		//going to hit a block with feet in next frame
	
		while( instance_place(x, y+ sign(vsp), obj_platform) == noone) {
			y += sign(vsp);
		}
		inst = instance_place(x, y+ sign(vsp), obj_platform);
		vsp = 0;
		if(y < inst.y){
			on_platform = true;
			doubleJump = true;
		} else {
			on_platform = false;
		}
	}
	//hiding logic
	hiding = false;
	if (place_meeting(x, y+1, obj_hideable)&&keydown) {
		hiding = true;
		depth =1;
	}else{
		depth = -1;	
	}
	// Sprite variables
	var idle_sprite = spr_player_idle;
	var mvn_sprite = spr_player_mv;
	//Determine player movement animation
	sprite_mv_script(self,idle_sprite,mvn_sprite,move,hsp!=0);

	// Move player according to vsp and hsp
	y += vsp;
	x += hsp;
}else{
	image_speed =0;	
}