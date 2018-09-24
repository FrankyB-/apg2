/// @description Create some blood
	// Apply gravity
if (!place_meeting(x,y+1,Collision))
{  
 ySpeed_enemy += Grav;

}

	// Create within an area
	var rand_x = irandom_range(-4,4);
	var rand_y = irandom_range(-4,4);
	
	instance_create_depth(x+rand_x,y+rand_y,5,EnergyPoint)
