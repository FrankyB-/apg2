// Horizontal check
if (place_meeting(x+xSpeed,y,Collision))
{
    while(!place_meeting(x+sign(xSpeed),y,Collision))
    {
        x += sign(xSpeed);
    }
    xSpeed = 0;
	ropeAngleVelocity = 0;
	
	
}
x += xSpeed;

if (right || left)
{
	xSpeed += (right-left)*SpeedUp; // add horizontal value (direction value multiply by acceleration)
	if (xSpeed > nSpeed) xSpeed = nSpeed; // Prevent x value to be greater than normal speed
	if (xSpeed < -nSpeed) xSpeed = -nSpeed; // Prevent x value to be greater than -normal speed
}else
{
	apply_friction(Frict);		
}
if (xSpeed !=0)
{
	image_xscale = sign(xSpeed);
}

// vertical check
if (place_meeting(x,y+ySpeed,Collision))
{
    while(!place_meeting(x,y+sign(ySpeed),Collision))
    {
        y += sign(ySpeed);
    }
    ySpeed = 0;
	state = fall_state;
	//previous_state = fall_state;
}
y += ySpeed;