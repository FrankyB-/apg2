/// Take damage
	if (state != hurt_state)
	{
		image_blend = make_color_rgb(220,150,150);
		ySpeed = -6;
		xSpeed = (sign(x-other.x)*5);
		
		state = hurt_state;
		move_();
		if (instance_exists(PlayerStats))
		{
			PlayerStats.hp -= 1;
		}
	}
