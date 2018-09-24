
if (downhold && !(Player.Crouched) && xSpeed == 0)
{
	
	Player.sprite_index = s_playerCr;
	Player.Crouched = true;

	
}
if (down_release)
{
	Player.sprite_index = s_player;
	Player.Crouched = false;
	if (ySpeed = 0)
	{
		previous_state = crouch_state;
		state = move_state;
	}
}

