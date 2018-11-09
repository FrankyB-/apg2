/// @description 

if (!place_meeting(x,y-17,Collision))
{
	sprite_index = s_player
	PlayerStats.Slide = false;
	xSpeed = 0;
	state = move_state;
	show_debug_message("Slide stop");
}