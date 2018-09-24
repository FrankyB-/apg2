
//Jump transition
if (up)
{
	
	state = jump_state;
	previous_state = ledge_grab_state;
}
if (down)
{
	state = fall_state;
	previous_state = ledge_grab_state;
}