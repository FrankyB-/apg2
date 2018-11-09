	show_debug_message("Slide on!");
if (PlayerStats.Slide)
{
	Player.sprite_index = s_playerSl;
// Horizontal check
	if (place_meeting(x+xSpeed,y,Collision))
	{
	    while(!place_meeting(x+sign(xSpeed),y,Collision))
	    {
	        x += sign(xSpeed);
	    }
	    xSpeed = 0;

	}
	x += xSpeed*SpeedUp/2;
	if (xSpeed > nSpeed) xSpeed = nSpeed; // Prevent x value to be greater than normal speed
	if (xSpeed < -nSpeed) xSpeed = -nSpeed; // Prevent x value to be greater than -normal speed
	
}
// check for falling down in slide state
if (!place_meeting(x,y+1,Collision))
{
	state = fall_state;
	previous_state = move_state;
	
}

//// check if ok to stop slide
//if (place_meeting(x,y-17,Collision))
//{
//	alarm[1] = slide_cooldown_;
//}