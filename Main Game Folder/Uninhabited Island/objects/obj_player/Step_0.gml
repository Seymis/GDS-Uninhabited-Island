
//inputs
var left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var up = keyboard_check(vk_up) or keyboard_check(ord("W"));
var down = keyboard_check(vk_down) or keyboard_check(ord("S"));

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
		image_index = 1;
	}

//move and collide
//move_and_collide(x_speed, y_speed, all);

//collision
if place_meeting(x+x_speed,y,prt_collision) {
    x = round(x);
    while !place_meeting(x+sign(x_speed),y,prt_collision)
        x += sign(x_speed);
    x_speed = 0;
}
x += x_speed;

if place_meeting(x,y+y_speed,prt_collision) {
    y = round(y);
    while !place_meeting(x,y+sign(y_speed),prt_collision)
        y += sign(y_speed);
    y_speed = 0;
}
y += y_speed; 



//do movement
//x += x_speed;
//y += y_speed;

//sort depth
depth = -y;

