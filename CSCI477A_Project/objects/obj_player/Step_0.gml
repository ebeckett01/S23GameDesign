/// @Player specific movement
// Key pressed variables
var keyleft = keyboard_check(vk_left);
var keyright = keyboard_check(vk_right);
var keyup = keyboard_check(vk_up);
var keydown = keyboard_check(vk_down);
var jumping = keyboard_check(vk_space);

// Movement variables
var move = keyright-keyleft;

// Set horizontal movement value
hsp = move*spd;


// Collision logic

//check horizontal collision with a block
if (place_meeting(x + hsp, y, obj_platform)) {
	//going to hit a block in next frame
	while( !place_meeting(x+ sign(hsp), y, obj_platform)) {
		x += sign(hsp);
	}
	hsp = 0;
}

x += hsp;
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

y += vsp;
