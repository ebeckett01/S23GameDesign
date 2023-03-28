/// @description Insert description here
// You can write your code in this editor

global.prev_room = room;
game_save("level.dat");
room_goto(rm_combat);
alarm[1] = room_speed*0.5;