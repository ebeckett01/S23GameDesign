/// @description Insert description here
// You can write your code in this editor
if (collision_line(x,y,obj_player.x,obj_player.y, obj_platform, 1, 0)) {
	attention = false;
}else{
	attention = true;
}

if (attention) {
	sprite_index = spr_temp_enemy_attention;
}else{
	sprite_index = spr_temp_enemy;
}