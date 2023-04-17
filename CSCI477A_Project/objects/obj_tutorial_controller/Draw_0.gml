/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_tutorial);
draw_set_color(c_white);
var t = global.tutorial_text_mod;
// Draw Left - Right prompt
if (global.wasd) {
	draw_text(t+100,1500,"Press A to go left or D to go right");
} else {
	draw_text(t+100,1500,"Press <- to go left or -> to go right");
}

// Draw Pause prompt
draw_text(t+100,1600,"Press ESC to pause and toggle controls");

// Draw Dash prompt
draw_text(t+600,1500,"Hold Shift to dash.");

// Draw Jump prompt
if (global.wasd) {
	draw_text(t+1000,1500,"Press W to jump and navigate terrain");
} else {
	draw_text(t+1000,1500,"Press Up to jump and navigate terrain");
}

// Draw Double Jump prompt
draw_text(t+1600,1600,"Jump again while in midair to\nnavigate even steeper terrain");

// Draw Hide prompt
if (global.wasd) {
	draw_text(t+2100,1500,"Hide from enemies by holding\nS while in the bushes");
} else {
	draw_text(t+2100,1500,"Hide from enemies by holding\nDown while in the bushes");
}

// Draw Attack prompt
draw_text(t+2700,1700,"Attack enemies from behind\nusing Space");