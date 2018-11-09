//Falling check
//Horizontal check
move_();
// Apply gravity
if (!place_meeting(x,y+1,Collision))
{  
 ySpeed += Grav;
 if (ySpeed > maxFallSpeed) ySpeed = maxFallSpeed;
}

//Check for ledge grab state
var Falling = y-yprevious > 0;
var Wasnt_wall = !position_meeting(x+11*image_xscale, yprevious, Collision);
var Is_wall = position_meeting(x+11*image_xscale,y,Collision);

if (Falling && Wasnt_wall && Is_wall)
{
	state = ledge_grab_state;
	previous_state = fall_state;
}

if (uphold && JetUnlock)
{
	if (currentFuel > 10)
	{
		state = jetpack_state;
		previous_state = fall_state;
	}
}

if (WeaponHook)
{
	grappleX = Player.x+100*image_xscale;
	grappleY = Player.y-100;
	ropeX	= x;
	ropeY	= y;
	ropeAngleVelocity = 0;
	ropeAngle = point_direction(grappleX,grappleY,x,y);
	ropelength = point_distance(grappleX,grappleY,x,y);
	previous_state = fall_state;
	state = grapplehook_state;
}