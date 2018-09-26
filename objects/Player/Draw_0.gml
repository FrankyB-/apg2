/// @description 
if (state = grapplehook_state) && position_meeting(grappleX,grappleY,Collision)
{
	draw_line_width(grappleX,grappleY,ropeX,ropeY,2);
}
if  (Flash >0)
{
	Flash--;
	shader_set(shWhite)
	draw_self();
	shader_reset();
}



switch (state)
{
	case move_state:
		if (xSpeed =0)
		{
		sprite_index = spr_player_idle;
		}else
		sprite_index = spr_player_run;
	break;
	case jump_state:
		sprite_index = spr_player_jump;
	break;
	case fall_state:
		sprite_index = spr_player_fall;
	break;
	case slide_state:
		sprite_index = spr_player_slide;
	break;
	case hurt_state:
		sprite_index = spr_player_hurt;
	break;
	case jetpack_state:
		sprite_index = spr_player_jump;
	break;
	default: sprite_index = spr_player_idle;
	
}
draw_self();