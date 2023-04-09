/// @description Insert description here
// You can write your code in this editor

mouse_on_button = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);
if(mouse_on_button && mouse_check_button_pressed(mb_left)){
	clicked = true;	
}
if(mouse_check_button_released(mb_left)){
	clicked = false;	
}

if(clicked){
	// What the button should do if clicked
	button_clicked();
}else if(mouse_on_button){
	//What the button should do if mouse is hovering over button
	button_hovering();
}