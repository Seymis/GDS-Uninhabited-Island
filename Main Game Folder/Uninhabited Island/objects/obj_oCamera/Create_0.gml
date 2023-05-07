/// @description  camera

camWidth = 1280;
camHeight = 720;

follow = obj_player;

//clamp half of the camera
cam = view_camera[0];
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;

xTo = x;
yTo = y;