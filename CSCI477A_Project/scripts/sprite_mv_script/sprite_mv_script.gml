// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sprite_mv_script(obj, idle_spr, mv_spr, spr_dir, moving){
	if(instance_exists(obj)){
		if(spr_dir <0){
			obj.image_xscale =-1;	
		}else if(spr_dir>0){
			obj.image_xscale = 1;	
		}
		if(moving){
			obj.sprite_index = mv_spr;
		}else{
			obj.sprite_index = idle_spr;
		}
	}
}