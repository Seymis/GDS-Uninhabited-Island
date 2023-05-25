/// @description Insert description here
// You can write your code in this editor
    if global.orbCounter == 4 {
        can_fade = 1;
    }
	
if can_fade == 1 {
    fade_timer += 1;
    if fade_timer >= fade_timer_max {
        fade_timer = 0;
        can_fade = 0;
		instance_destroy(all);
        room_goto(rm_end);
    }
}