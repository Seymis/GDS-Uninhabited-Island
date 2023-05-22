/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x,y+32,obj_player)
or place_meeting(x,y-32,obj_player)
or place_meeting(x+32,y,obj_player)
or place_meeting(x-32,y,obj_player))
{
	room_goto(targetRoom);
	obj_player.x = targetX;
	obj_player.y = targetY;
	
	//if there is an orb, 
	//if instance_exists(obj_orb){ 
	//	obj_orb.x = targetX;//  - random_range(1, 10);
	//	obj_orb.y = targetY;// - random_range(2,15);
	//}
}
