/// @description sokoban

x += (target_x - x) * .05

y += (target_y - y) * .05

if keyboard_check_pressed(vk_space) {

	if place_meeting(x+32,y,obj_player) and !(place_meeting(x+32,y,obj_crate) or place_meeting(x+33,y,obj_border)) {
		target_x -= 32;
		}
	if place_meeting(x-32,y,obj_player) and !(place_meeting(x+32,y,obj_crate) or place_meeting(x+33,y,obj_border)) {
		target_x += 32;
		}
	if place_meeting(x,y-32,obj_player) and !(place_meeting(x+32,y,obj_crate) or place_meeting(x+33,y,obj_border)) {
		target_y += 32;
		}
	if place_meeting(x,y+32,obj_player) and !(place_meeting(x+32,y,obj_crate) or place_meeting(x+33,y,obj_border)) {
		target_y -= 32;
		}
}

depth = -y;



