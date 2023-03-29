/// @description Insert description here
// You can write your code in this editor

alarm[3] = room_speed*0.1;
global.prev_room = room;
game_save("level.dat");
room_goto(rm_combat);