/// @description Insert description here
// You can write your code in this editor
if can_fade == 1 {
    draw_set_alpha(fade_timer/fade_timer_max);
    draw_set_color(c_black);
    draw_rectangle(0, 0, room_width, room_height, -1);
    draw_set_alpha(1);
}