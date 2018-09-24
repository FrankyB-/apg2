/// @description Control the player's state
//get input
get_input();

script_execute(state);

if (Weapon1)
{
	state = weapon1_state;
}


