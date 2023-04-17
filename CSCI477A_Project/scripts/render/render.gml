// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function render(){
	var x1 = camera_get_view_x(view_camera[0]);
	var y1 = camera_get_view_y(view_camera[0]);
	var x2 = camera_get_view_width(view_camera[0]);
	var y2 = camera_get_view_height(view_camera[0]);
	instance_deactivate_all(true);
	instance_activate_region(x1,y1,x2,y2,true);
	instance_activate_object(obj_game_controller);
	instance_activate_object(obj_tutorial_controller);
	instance_activate_object(obj_persitance_vars);
}