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
	jumping = keyboard_check(vk_up);
	keydown = keyboard_check(vk_down);
}else{
	keyleft = keyboard_check(ord("A"));
	keyright = keyboard_check(ord("D"));
	jumping = keyboard_check(ord("W"));
	keydown = keyboard_check(ord("S"));
}

// Non-changing key binds
var attack = keyboard_check(vk_space);
var dash_key =keyboard_check(vk_shift);

// Movement variables
var move = keyright-keyleft;

// Set horizontal movement value
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
	vsp -= jspd;
	on_platform = false;   
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
	} else {
	on_platform = false;
	}
}
if(on_platform){
	sprite_index = spr_grounded_player;
}else {
	sprite_index = spr_temp_player;
}
//hiding logic
if (place_meeting(x, y+1, obj_hideable)) {
	if (keydown) {
		hiding = true;
	} else{
		hiding = false;
	}
}else { 
	hiding = false;
}

if(hiding){
	depth = 1;
}else{
	depth =-1;
}

// Move player according to vsp and hsp
y += vsp;
x += hsp;
