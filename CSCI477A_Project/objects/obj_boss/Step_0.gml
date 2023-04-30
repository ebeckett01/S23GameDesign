/// @description Insert description here
// You can write your code in this editor
if(point_distance(x,y,obj_player.x,obj_player.y) <= view_dist){
	detected =true;	
}
if(detected){
	global.prev_room = room;
	global.destroy_obj = self;
	save_script();
	room_goto(rm_boss_combat);
}