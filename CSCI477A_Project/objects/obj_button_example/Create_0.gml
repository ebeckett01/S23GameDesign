/// @Example on how to use button
//  Make sure the parent is obj_button_parent
//  In the create event make sure you do event_inherited
//  To adjust the text displayed on the button Open variable definitions and change the text

// Inherit the parent event
event_inherited();

// Modify what the button does when clicked
activate_button = function(){
	// Code for what you want the button to do
}

// Mpdify what the button does when mouse hovers over it
button_hovering = function(){
	// Code for what you want the button to do	
}