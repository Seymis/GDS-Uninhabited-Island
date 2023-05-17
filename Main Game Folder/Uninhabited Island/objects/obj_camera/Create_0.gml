/// @description Insert description here
// You can write your code in this editor

//orb counter
draw_set_font(fnt_pixel);
global.orbCounter = 0;

// camera
	width = 1280;
	height = 720;
	scale = 1;

	display_width = width * scale;
	display_height = height * scale;

	//Game canvas
	surface_resize(application_surface, width, height);

	//Actual game window
	window_set_size(display_width, display_height);

	//Game GUI canvas - can be whatever you want
	display_set_gui_size(width, height);