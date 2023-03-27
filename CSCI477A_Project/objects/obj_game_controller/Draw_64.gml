/// @description Insert description here
// You can write your code in this editor

if (global.game_state == game_states.PAUSED){
	if (!surface_exists(paused_surf)){
		paused_surf = surface_create(room_width, room_height);
		surface_set_target(paused_surf);
		draw_surface(application_surface, 0, 0);
		surface_reset_target();
	}else{
		draw_surface(paused_surf, 0, 0);
		draw_set_alpha(0.5);
		draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
		draw_set_alpha(1);
		draw_set_halign(fa_center);
		draw_text_transformed_colour(room_width / 2, room_height / 2, "PAUSED", 2, 2, 0, c_aqua, c_aqua, c_aqua, c_aqua, 1);
		draw_set_halign(fa_left);
		// Menu bar along the top
		draw_set_halign(fa_center);
		draw_rectangle_colour(0, 0, room_width, 80, c_grey, c_grey, c_grey, c_grey, false);
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
}
if (global.game_state == game_states.COMBAT){
	draw_sprite_ext(spr_player_idle, 1, 300, 450, 3.5, 3.5, 0, c_white, 1);
	draw_sprite_ext(spr_temp_enemy, 1, 1050, 350 , -3.5, 3.5, 0, c_white, 1);
	// Menu bar along the top and bottom
	draw_set_halign(fa_center);
	draw_rectangle_colour(0, 0, room_width, 150, c_grey, c_grey, c_ltgrey, c_ltgrey, false);
	draw_set_halign(fa_center);
	draw_rectangle_colour(0, room_height, room_width, room_height - 150, c_ltgrey, c_ltgrey, c_grey, c_grey, false);
}