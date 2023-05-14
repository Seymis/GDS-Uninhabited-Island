
//inputs
var left = keyboard_check(vk_left);
var right = keyboard_check(vk_right);
var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);

//calculate movement
x_speed = right - left;
y_speed = down - up;

x_speed = x_speed * move_spd;
y_speed = y_speed * move_spd;


//animation
if x_speed != 0 or y_speed != 0 {
	//running
	if y_speed > 0 {
		sprite_index = spr_down;
	}
	if y_speed < 0 {
		sprite_index = spr_up;
	}
	if x_speed > 0 {
		sprite_index = spr_right;
	}
	if x_speed < 0 {
		sprite_index = spr_left;
	}
}
//idle
	else {
		image_index = 2;
	}


//do movement
//x += x_speed;
//y += y_speed;

//move and colllide
move_and_collide(x_speed, y_speed, all);

//sort depth
depth = -y;


