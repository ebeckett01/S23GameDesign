/// @description Insert description here
// You can write your code in this editor
player_dir = point_direction(x,y,obj_player.x,obj_player.y)
if (((player_dir+360+90*dir) mod 360) < 180 && !obj_player.hiding) {
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
}