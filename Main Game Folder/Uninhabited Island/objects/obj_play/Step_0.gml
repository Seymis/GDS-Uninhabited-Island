/// @description Insert description here
// You can write your code in this editor
if (position_meeting(mouse_x, mouse_y, id)) {
   layer_add_instance("Instances_play_1", id);
	if mouse_check_button_pressed(mb_left) {
		room_goto(rm_hub);
	}
} else {
	layer_add_instance("Instances_play", id);
}