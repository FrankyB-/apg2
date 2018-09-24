/// @description collision with enemy
var above_enemy = y < other.y+ySpeed;
var falling = ySpeed > 0;

if (above_enemy && (falling || state = ledge_grab_state))
{
	if (!place_meeting(x,yprevious,Collision))
	{
		y = yprevious;
	}
	while(!place_meeting(x,y+1,other))
	{
		y++;
	}
	// Kill the enemy
	with (other) 
	{
		instance_destroy();
	}
	// Bounce off the enemy
	ySpeed = (JumpPower/1.5);
}else
{
TakeDamage();
	
}

