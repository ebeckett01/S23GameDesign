// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_vision_cone(dir,obj){
	with(obj){
		wid = self.sprite_width;
		hit = self.sprite_width;
		tri_h = hit/2;
		tri_w = obj.view_dist - wid/2;
		draw_self();
		draw_set_colour(c_aqua);
		draw_set_alpha(0.2);
		if(dir<0){
			draw_triangle(x-wid/2, y,
						x+tri_w, y-tri_h,
						x+tri_w,y+tri_h, false);
		}else{
			draw_triangle(x-wid/2, y,
						x-tri_w, y-tri_h,
						x-tri_w,y+tri_h, false);
		}
		draw_set_alpha(1);
	}
	//audio_play_sound(snd_debug, 10, false);
}