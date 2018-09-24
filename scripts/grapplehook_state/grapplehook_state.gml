var _ropeAngleAcceleration = -0.5 * dcos(ropeAngle);
ropeAngleVelocity += _ropeAngleAcceleration;
ropeAngle += ropeAngleVelocity;
ropeAngleVelocity *= 0.99; // dampener

ropeX = grappleX + lengthdir_x(ropelength,ropeAngle);
ropeY = grappleY + lengthdir_y(ropelength,ropeAngle);

if (position_meeting(grappleX,grappleY,Collision))
{
xSpeed = ropeX - x;
ySpeed = ropeY - y;
move_swing();
}else
{
	previous_state = grapplehook_state;
	state = fall_state;
}

if (WeaponHook_release)
{
	previous_state = grapplehook_state;	
	state = move_state;
}