/// @description Insert description here
// You can write your code in this editor
if(global.game_state == game_states.PLAYING){
	//get player direction
	player_dir = point_direction(x,y,obj_player.x,obj_player.y)
	//is enemy looking at player
	if ( point_in_rectangle(x,y,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),camera_get_view_x(view_camera[0])+ camera_get_view_width(view_camera[0]), camera_get_view_y(view_camera[0]) +camera_get_view_height(view_camera[0]))
	&&((player_dir+360+90*dir) mod 360) < 180 && !obj_player.hiding) {
		//is something in the way of the enemy seeing you
		if (collision_line(x,y,obj_player.x,obj_player.y, obj_platform, 1, 0)) {
			attention = false;
		}else{
			attention = true;
		}
	}else{
		attention = false;
	}

	if (dir > 0) {
		image_xscale = 1;
	}else{
		image_xscale = -1;
	}
	if (attention) {
		sprite_index = spr_temp_enemy_attention;
	}else{
		sprite_index = spr_temp_enemy;
		alarm[1]++;
	}
}else{
	alarm[0]++;
	alarm[1]++;
}