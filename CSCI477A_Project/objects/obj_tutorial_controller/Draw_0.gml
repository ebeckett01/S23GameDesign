/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_tutorial);
draw_set_color(c_white);
var t = global.tutorial_text_mod;
// Draw Left - Right, Jump, Hide, and Health Potion prompts
// Grouped together because of global.wasd dependency
if (global.wasd) {
	draw_text(t+100,1500,"Press A to go left or D to go right");
	draw_text(t+1000,1500,"Press W to jump and navigate terrain");
	draw_text(t+2100,1500,"Hide from enemies by holding\nS while in the bushes");
	draw_set_color(c_black);
	draw_text(t+160,1000,"Health potions may be hidden out of reach.\nPress S to consume them and restore all health.");
} else {
	draw_text(t+100,1500,"Press <- to go left or -> to go right");
	draw_text(t+1000,1500,"Press Up to jump and navigate terrain");
	draw_text(t+2100,1500,"Hide from enemies by holding\nDown while in the bushes");
	draw_set_color(c_black);
	draw_text(t+160,1000,"Health potions may be hidden out of reach.\nPress Down to consume them and restore all health.");
}

draw_set_color(c_white);

// Draw Pause prompt
draw_text(t+100,1600,"Press ESC to pause and toggle controls");

// Draw Dash prompt
draw_text(t+600,1500,"Hold Shift to dash.");

// Draw Double Jump prompt
draw_text(t+1600,1600,"Jump again while in midair to\nnavigate even steeper terrain");

// Draw Attack prompt
draw_text(t+2700,1700,"Attack enemies from behind\nusing Space");

// Draw hideable barrels prompt
draw_text(t+3350,1700,"You can also hide behind barrels.");

// Draw Next Level prompt
draw_text(t+4350,1600,"Head to the next level by reaching the right side of the screen");

draw_set_color(c_black);

// Draw high ground prompt
draw_text(t+3250,1250,"Enemies can't see far above them.\nTry taking the high ground to avoid them.");

// Draw rooftops prompt
draw_text(t+4250,1250,"Most flat rooftops can support a person's weight.\nUse this to your advantage.");