
if(audio_group_is_loaded(audiogroup_default)) {
	room_goto(rm_start);	
	audio_play_sound(snd_bgm, 1, true);
}