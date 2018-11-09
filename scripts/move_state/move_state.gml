move_();

if (JetUnlock)
{
	Jetpacked = true;
}
//Fall transition
if (!place_meeting(x,y+1,Collision))
{
	state = fall_state;
	previous_state = move_state;
	
}
//Jump transition
if (up)
{
	
	state = jump_state;
	previous_state = move_state;
}

//Crouch transition
if (down && xSpeed == 0)
{
	state = crouch_state;
	previous_state = move_state;
}

if (down_release && (xSpeed > 2 || xSpeed < -2) )
{
	if (PlayerStats.Slide = true)
	{
		slide_cooldown_ = room_speed/2;
		state = slide_state;
		alarm[1] = slide_cooldown_;
	}
}
if (down)
{
	PlayerStats.Slide = true;
}

// Check interaction object
var _inst_touch = instance_place(x,y,InteractParent)
if (_inst_touch)
{
	show_debug_message("Name of Instance" + string(_inst_touch))
	PlayerStats.Interact_touch = true;
	state = interact_state;
	previous_state = move_state;
}

	/// As long as we are not jetpacking state we are increasing fuel
	if (currentFuel != 100)
	{
		currentFuel += FuelChargeRate;
	}