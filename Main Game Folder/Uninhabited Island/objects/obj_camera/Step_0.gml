/// @description Insert description here
// You can write your code in this editor
//camera
	//The target here is the player
	var target_x = obj_player.x;
	var target_y = obj_player.y;

	//Because the camera's anchor (x, y) is at the TOP LEFT,
	//We need to remove half the width/height to CENTRE the target
	var xx = target_x - (width * 0.5);
	var yy = target_y - (height * 0.5);

	//Get our old position
	var previous_x = camera_get_view_x(view_camera[0]);
	var previous_y = camera_get_view_y(view_camera[0]);

	//Now we lerp from our previous position to our target
	xx = lerp(previous_x, xx, 0.1);
	yy = lerp(previous_y, yy, 0.1);

	//Clamp the x and y of the camera so it cannot go outside the room
	xx = clamp(xx, 0, room_width - width);
	yy = clamp(yy, 0, room_height - height);

	//Finally, set the camera
	camera_set_view_pos(view_camera[0], xx, yy);