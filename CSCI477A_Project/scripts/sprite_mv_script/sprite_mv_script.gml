// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sprite_mv_script(idle_spr, mv_spr, grnd_spr, spr_dir, moving, grounded){
	if(spr_dir <0){
		obj_player.image_xscale =-1;	
	}else if(spr_dir>0){
		obj_player.image_xscale = 1;	
	}
	if(instance_exists(obj_player)){
		if(moving){
			obj_player.sprite_index = mv_spr;
		}else if(grounded){
			obj_player.sprite_index = grnd_spr;
		}else{
			obj_player.sprite_index = idle_spr;
		}
	}
}