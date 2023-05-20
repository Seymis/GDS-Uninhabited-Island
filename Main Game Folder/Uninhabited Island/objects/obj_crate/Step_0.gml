/// @description sokoban

x += (target_x - x) * .05

y += (target_y - y) * .05

if keyboard_check_pressed(vk_space) {

	if place_meeting(x+32,y,obj_player) and !(place_meeting(x+32,y,obj_crate) or place_meeting(x+33,y,obj_border)) and obj_player.sprite_index == spr_left {
		target_x -= 32;
		audio_play_sound(snd_slideSFX, 1, false);
		}
	else if place_meeting(x-32,y,obj_player) and !(place_meeting(x+32,y,obj_crate) or place_meeting(x+33,y,obj_border)) and obj_player.sprite_index == spr_right {
		target_x += 32;
		audio_play_sound(snd_slideSFX, 1, false);
		}
	else if place_meeting(x,y-32,obj_player) and !(place_meeting(x+32,y,obj_crate) or place_meeting(x+33,y,obj_border)) and obj_player.sprite_index == spr_down {
		target_y += 32;
		audio_play_sound(snd_slideSFX, 1, false);
		}
	else if place_meeting(x,y+32,obj_player) and !(place_meeting(x+32,y,obj_crate) or place_meeting(x+33,y,obj_border)) and obj_player.sprite_index == spr_up {
		target_y -= 32;
		audio_play_sound(snd_slideSFX, 1, false);
		}
}

depth = -y;



