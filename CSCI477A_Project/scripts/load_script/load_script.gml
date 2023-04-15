// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_script(){
	with(obj_player){
		x =global.saveX;
		y =global.saveY;
	}
	if(global.destroy_obj != pointer_null && global.battle_won){
		with(global.destroy_obj){
			instance_destroy(self);	
		}
	}
}