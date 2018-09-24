if (collision_line(x,y,	x + lengthdir_x(speed, direction),
						y + lengthdir_y(speed, direction),
						Collision, false, true))
						{
							instance_destroy();
						}

