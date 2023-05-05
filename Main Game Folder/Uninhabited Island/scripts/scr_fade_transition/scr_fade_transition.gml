// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function create_room_transition(effect_time, target_room, type){
	var inst = instance_create_depth(0, 0, -15000, obj_room_transition);
	inst.duration = effect_time;
	inst.goal_room = target_room;
	inst.transition = type;
}