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

//check vertical collision with a block
if (place_meeting(x, y + vsp, obj_platform)) {
	//going to hit a block with feet in next frame
	while( !place_meeting(x, y+ sign(vsp), obj_platform)) {
		y += sign(vsp);
	}
	vsp = 0;
	on_platform = true;
} else {
	on_platform = false;
}
//jumping
if (on_platform && jumping){
	vsp -= jspd;
	on_platform = false;   
}
//hiding logic


y += vsp;
