/// @description Insert description here
// You can write your code in this editor
if (global.game_state == game_states.PLAYING){
	//draw GUI box
	draw_set_halign(fa_center);
	draw_rectangle_colour(0, 0, camera_get_view_width(view_camera[0]),40, c_grey, c_grey, c_grey, c_grey, false);
	//score text
	draw_set_halign(fa_left);
	draw_set_valign(fa_center);
	draw_text_transformed_colour(20, 20, "SCORE: " + string(score), 1, 1, 0, c_white, c_white, c_white, c_white, 1);
	
}
if (global.game_state == game_states.PAUSED){
	draw_set_alpha(0.5);
	draw_rectangle_colour(0, 0, camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]), c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
	draw_set_halign(fa_center);
	draw_text_transformed_colour(camera_get_view_width(view_camera[0]) / 2, camera_get_view_height(view_camera[0]) / 2, "PAUSED", 2, 2, 0, c_aqua, c_aqua, c_aqua, c_aqua, 1);
	draw_set_halign(fa_left);
	// Menu bar along the top
	draw_set_halign(fa_center);
	draw_rectangle_colour(0, 0, camera_get_view_width(view_camera[0]),80, c_grey, c_grey, c_grey, c_grey, false);
	// Box for WASD controls
	draw_rectangle_colour(10, 10, 70, 70, c_white, c_white, c_white, c_white, false);
	// Text for WASD
	draw_set_halign(fa_left);
	draw_text_transformed_colour(80, 20, "WASD", 0.75, 0.75, 0, c_aqua, c_aqua, c_aqua, c_aqua, 1);
	draw_set_halign(fa_center);
	// Check box for WASD
	if(global.wasd){
		draw_sprite(spr_checkmark,0,14,5);
	}
	
}
if (global.game_state == game_states.COMBAT){
	draw_sprite_ext(spr_player_idle, 1, 300, 550, 3.5, 3.5, 0, c_white, 1);
	draw_sprite_ext(spr_temp_enemy, 1, 1050, 350 , -3.5, 3.5, 0, c_white, 1);
	// Menu bar along the top and bottom
	draw_rectangle_colour(0, 0, room_width, 150, c_grey, c_grey, c_ltgrey, c_ltgrey, false);
	//health bars
	draw_rectangle_colour(150, 350, 450 , 350+20, c_grey, c_grey, c_grey, c_grey, false);
	draw_rectangle_colour(152, 352, 148 + 3*global.health, 350+18,c_lime, c_lime, c_green, c_green, false);
	draw_rectangle_colour(900, 170, 1200 , 170+20, c_grey, c_grey, c_grey, c_grey, false);
	draw_rectangle_colour(902, 172, 898 + 3*enemy_health, 170+18,c_lime, c_lime, c_green, c_green, false);
	
}