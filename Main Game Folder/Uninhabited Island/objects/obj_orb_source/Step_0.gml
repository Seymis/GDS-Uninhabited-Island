/// @description Insert description here
//creates the orb and destroys the id

if keyboard_check_pressed(vk_space) {

	if place_meeting(x+32,y,obj_player) {
		instance_destroy(id);
		audio_play_sound(snd_orbChime, 1, false)
		global.orbCounter += 1;
		instance_create_depth(x, y, -100, obj_orb);
		}
	else if place_meeting(x-32,y,obj_player) {
		instance_destroy(id);
		audio_play_sound(snd_orbChime, 1, false)
		global.orbCounter += 1;
		instance_create_depth(x, y, -100, obj_orb);
		}
	else if place_meeting(x,y-32,obj_player) {
		instance_destroy(id);
		audio_play_sound(snd_orbChime, 1, false)
		global.orbCounter += 1;
		instance_create_depth(x, y, -100, obj_orb);
		}
	else if place_meeting(x,y+32,obj_player) {
		instance_destroy(id);
		audio_play_sound(snd_orbChime, 1, false)
		global.orbCounter += 1;
		instance_create_depth(x, y, -100, obj_orb);
		}
}

depth = -y;