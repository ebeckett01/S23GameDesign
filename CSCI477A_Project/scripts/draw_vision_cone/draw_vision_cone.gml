// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_vision_cone(dir,obj){
	with(obj){
		wid = self.sprite_width;
		hit = self.sprite_width;
		v_offset = 20;
		h_offset = 60;
		tri_h = hit;
		tri_w = obj.view_dist - wid/2;
		trig_two = view_dist/3;
		//draw_set_colour(c_red);
		draw_self();
		draw_set_alpha(0.3);
		if(dir<0){
			draw_triangle_colour(x-(wid+h_offset), y-v_offset,
						x+tri_w, y-tri_h-v_offset,
						x+tri_w,y+tri_h-v_offset,c_red,c_maroon,c_maroon, false);
		}else{
			draw_triangle_colour(x-(wid-h_offset), y-v_offset,
						x-tri_w, y-tri_h-v_offset,
						x-tri_w,y+tri_h-v_offset,c_red,c_maroon,c_maroon, false);
		}
		draw_set_alpha(1);
	}
	//audio_play_sound(snd_debug, 10, false);
}