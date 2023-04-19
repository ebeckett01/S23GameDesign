/// @description Insert description here
// You can write your code in this editor
attention = false;
alarm[3] = room_speed*0.75;
global.prev_room = room;
global.destroy_obj = self;
save_script();
room_goto(rm_combat);