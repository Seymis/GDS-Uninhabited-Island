/// @description Insert description here
//creates the orb and destroys the id

if keyboard_check_pressed(vk_space) {

	if place_meeting(x+32,y,obj_player) {
		instance_destroy(id);
		global.orbCounter += 1;
		instance_create_depth(x, y, 0, obj_orb);
		}
	if place_meeting(x-32,y,obj_player) {
		instance_destroy(id);
		global.orbCounter += 1;
		instance_create_depth(x, y, 0, obj_orb);
		}
	if place_meeting(x,y-32,obj_player) {
		instance_destroy(id);
		global.orbCounter += 1;
		instance_create_depth(x, y, 0, obj_orb);
		}
	if place_meeting(x,y+32,obj_player) {
		instance_destroy(id);
		global.orbCounter += 1;
		instance_create_depth(x, y, 0, obj_orb);
		}
}

depth = -y;