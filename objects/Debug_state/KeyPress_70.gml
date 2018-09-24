/// @description 


// freeze player
if (Player.state != freeze_state)
{
	Player.image_blend = make_color_rgb(0,0,255);
	Player.state = freeze_state;
	
}



////damage player
//Player.Flash = 3;
//Player.previous_state = move_state;
//Player.state = hurt_state;

//show_debug_message("Hurt?");