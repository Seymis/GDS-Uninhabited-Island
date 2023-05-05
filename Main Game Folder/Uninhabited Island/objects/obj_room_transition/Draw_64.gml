if counter >= duration {
	room_goto(goal_room);
	instance_destroy(self);
}

switch (transition) {
  case "fade":
    draw_sprite_ext(spr_rectangle, 0, 0, 0, room_width, room_height, 0, c_black, alpha)
	counter += 1;
	alpha += 0.05;
    break;	

	default:
	room_goto(goal_room)
	break;
}