/// Jetpack state check
	move_();
	// Apply gravity
	if (!place_meeting(x,y+1,Collision))
	{  
		ySpeed += Grav;
		if (ySpeed > maxFallSpeed) ySpeed = maxFallSpeed;
	}
	// Apply our jetpack force when our ySpeed is not maxed out and there isn't a wall above us
	if(uphold)
	{
		if (ySpeed > JumpPower)
		{
			if (ySpeed > -maxySpeed && !place_meeting(x,y - 1, Collision))
				{
					ySpeed -= jetPower + Grav + max(0,abs(ySpeed) / 2);
				}
		}
	}

	// Transition to the falling state when key is release.
	if (up_release) || currentFuel <= 0
	{
		Grav = 2.0;
		state = fall_state;
	}

	/// As long as we are in jetpacking state we are decreasing fuel
	if (currentFuel > 0)
	{
		currentFuel -= FuelLossRate;
	}

