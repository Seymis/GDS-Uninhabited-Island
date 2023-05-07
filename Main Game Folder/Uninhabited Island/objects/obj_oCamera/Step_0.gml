/// @description Insert description here
// You can write your code in this editor
if follow != noone {
    xTo = follow.x;
    yTo = follow.y;

}

x += (xTo - x)/25;
y += (yTo - y)/25;

// Clamp camera
x = clamp(x, view_w_half, room_width - view_w_half);
y = clamp(y, view_h_half, room_height - view_h_half);

camera_set_view_pos(view_camera[0],x-(camWidth*0.5), y-(camHeight*0.5));