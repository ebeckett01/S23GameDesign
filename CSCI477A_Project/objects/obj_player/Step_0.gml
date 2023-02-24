/// @Player specific movement
// Key pressed variables
var keyleft = keyboard_check(vk_left);
var keyright = keyboard_check(vk_right);
var keyup = keyboard_check(vk_up);
var keydown = keyboard_check(vk_down);
var keyjump = keyboard_check(vk_space);

// Movement variables
var move = keyright-keyleft;

// Set horizontal movement value
if( move !=0){
	hsp = move*spd;
}
// Set verticle movement value
vsp = grav;

// Collision logic
if(place_meeting(x+hsp,y, obj_platform)){
	// Collision with left/right movement
	hsp = 0;
	
}
if(place_meeting(x,y+grav, obj_platform)){
	// Collision with ground
	vsp = 0;
}

x = x+ hsp;
y = y+ vsp;