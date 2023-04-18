/// @description Insert description here
// You can write your code in this editor
var view_dist = 400;
var wait_time = 0.75;

if(global.game_state == game_states.PLAYING && in_view(self)){
	//get player direction
	//player_dir = point_direction(x,y,obj_player.x,obj_player.y);
	//get distance to player
	//player_dist = point_distance(x,y,obj_player.x,obj_player.y);
	//is enemy looking at player and player is close enough
	//is something in the way of the enemy seeing you
	if (!obj_player.hiding && global.canspot &&
		(dir> 0 && collision_line(x,y,x-view_dist,y, obj_player, false, false)) ||
		(dir< 0 && collision_line(x,y,x+view_dist,y, obj_player, false, false))) {
		attention = true;
	}else{
		attention = false;
	}

	if (dir > 0) {
		image_xscale = 1;
	}else{
		image_xscale = -1;
	}
	if (attention) {
		sprite_index = enemy_atten;
	}else{
		sprite_index = enemy_idle;
		alarm[1] = room_speed*wait_time;
	}
}else{
	alarm[0]++;
	alarm[1]++;
	alarm[3]++;
}