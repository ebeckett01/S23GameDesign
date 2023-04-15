// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save_script(){
	if(instance_exists(obj_player)){
		global.saveX = obj_player.x;
		global.saveY = obj_player.y;
	}
}