/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x,y+32,obj_player)
or place_meeting(x,y-32,obj_player)
or place_meeting(x+32,y,obj_player)
or place_meeting(x-32,y,obj_player))
{
	room_goto(targetRoom);
	all.x = targetX;
	all.y = targetY;
}