move_();
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

if (downhold && (xSpeed > 2 || xSpeed < -2))
{
	state = slide_state;
	Player.Slide = true;
	alarm[1] = slide_cooldown_;
}

var _inst_touch = instance_place(x,y,InteractParent)
if (_inst_touch)
{
	show_debug_message("Name of Instance" + string(_inst_touch))
	state = interact_state;
	previous_state = move_state;
}