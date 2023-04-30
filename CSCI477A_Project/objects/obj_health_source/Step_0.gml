/// @description Insert description here
// You can write your code in this editor

var player_interact;
if (global.wasd) {
	player_interact = keyboard_check(ord("S"));
} else {
	player_interact = keyboard_check(vk_down);
}

if (player_interact && !used && place_meeting(x, y+1, obj_player)) {
	global.health = 100;
	used = true;
	instance_destroy(self);
}