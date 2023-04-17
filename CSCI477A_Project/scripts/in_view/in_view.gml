// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function in_view(obj){
	var x1 = camera_get_view_x(view_camera[0]);
	var y1 = camera_get_view_y(view_camera[0]);
	var x2 = x1+camera_get_view_width(view_camera[0]);
	var y2 = y1+camera_get_view_height(view_camera[0]);
	return point_in_rectangle(obj.x,obj.y,x1,y1,x2,y2);
}