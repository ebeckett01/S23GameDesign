/// @description Insert description here
// You can write your code in this editor
if(detected){
	global.prev_room = room;
	global.destroy_obj = self;
	save_script();
	room_goto(rm_combat);
}